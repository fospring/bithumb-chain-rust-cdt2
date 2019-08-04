
#![feature(custom_attribute)]
extern crate serde_json;
extern crate serde;
extern crate hex;
extern crate clap;

use std::io;
use std::fs::File;
use std::io::Read;
use std::io::Write;
use sha2::{Sha256,Digest};
use ripemd160::{Ripemd160};
use serde::{Deserialize, Serialize};
use clap::{Arg, App};

#[derive(Deserialize, Serialize, Debug)]
pub struct ContractAbi  {
    pub version: String,
    pub address: String,
    pub functions: Vec<Function>,
    pub events: Vec<Event>,
}

impl ContractAbi {
    pub fn generate_address (&mut self, address : String) {
        self.address = address;
    }
}

#[derive(Deserialize, Serialize, Debug)]
pub struct Function {
    pub name: String,
    pub inputs: Vec<AllArgs>,
    pub outputs: Vec<AllArgs>,
}

#[derive(Deserialize, Serialize, Debug)]
pub struct Event {
    pub name: String,
    pub inputs: Vec<AllArgs>,
}

#[derive(Deserialize, Serialize, Debug, Clone)]
pub struct ComponentArgs {
    pub name: String,
    #[serde(rename = "type")]
    pub type_: String,
    pub components: Vec<AllArgs>,
}

#[derive(Deserialize, Serialize, Debug, Clone)]
pub struct CommonArgs {
    pub name: String,
    #[serde(rename = "type")]
    pub type_: String,
}

#[derive(Deserialize, Serialize, Debug, Clone)]
#[serde(untagged)]
pub enum AllArgs {
    Component(ComponentArgs),
    Common(CommonArgs),
}

fn is_basic_type(target :&str) -> bool {
        match target {
            "uint8" | "uint32" | "int32" | "uint64" | "int64" | "uint256" | "address" | "string" | "bool" | "bytes" => true,
            _  => false,
        }
}

fn main() -> io::Result<()> {
    let matches = App::new("gen-address")
        .version("0.1.0")
        .author("xtario")
        .about("Generate contract address in Rust")
        .arg(Arg::with_name("contract")
            .help("contract path.")
            .empty_values(false)
        ).arg(Arg::with_name("abi")
        .help("abi path.")
        .empty_values(false)
    )
        .get_matches();

    let mut ctr_path : &str = "";
    let mut abi_path : &str = "";
//    let mut ctr_path : &str = "./sample.wasm";
//    let mut abi_path : &str = "./sample.json";
    if let Some(contract) = matches.value_of("contract") {
        ctr_path = contract
    } else {
        println!("please chose a contract as a input");
        println!("for help: ./bxa-gen-address -h");
        panic!();
    }

    if let Some(abi) = matches.value_of("abi") {
        abi_path = abi
    } else {
        println!("please chose a abi file as a input");
        println!("for help: ./bxa-gen-address -h");
        panic!();
    }

    // wasm file
    let mut f = File::open(ctr_path)?;
    let mut buffer = vec![];
    f.read_to_end(&mut buffer)?;

    let mut hasher = Sha256::new();
    hasher.input(buffer);
    let result = hasher.result();

    let mut ripemd_hasher = Ripemd160::new();
    ripemd_hasher.input(result);
    let result2 = ripemd_hasher.result();
    let hex_str = hex::encode(result2);
    println!("Address: {:?}", hex_str);

    // abi file
    let mut file = File::open(abi_path).unwrap();
    let mut data = String::new();
    file.read_to_string(&mut data).unwrap();
    let mut p : ContractAbi = serde_json::from_str(&data).unwrap();
    p.generate_address(hex_str);

    // read component
//    let mut file = File::open("../../target/json/components.json")?;
    let file = File::open("../../target/json/components.json");
    let mut file = match file {
        Ok(f) => f,
        Err(e) => {
            println!("#######ERROR:################");
            println!("cannot open components.json");
            panic!(e)
        },
    };

    let mut data = String::new();
    file.read_to_string(&mut data).unwrap();
    let components : Vec<ComponentArgs> = serde_json::from_str(&data).unwrap();

    //array extend
    for funcs in &mut p.functions {
        for args in &mut funcs.inputs {
            if let AllArgs::Component(arg) = args {

                if arg.type_.starts_with("tunple") && !arg.type_.ends_with("[]") {
                    arg.type_ = arg.type_[7..arg.type_.len()].to_string();
                    let v = arg.type_.split(",").collect::<Vec<&str>>();
                    for ty in v {
                        let item = CommonArgs{name: String::from("elem"),type_: ty.to_string()};
                        arg.components.push(AllArgs::Common(item));
                    }
                    arg.type_ = "struct".to_string();
                }

                if arg.type_.starts_with("tunple") && arg.type_.ends_with("[]") {
                    arg.type_ = arg.type_[7..arg.type_.len()-2].to_string();
                    let v = arg.type_.split(",").collect::<Vec<&str>>();

                    let mut item = ComponentArgs{name: String::from(""),type_: String::from("struct"),components:Vec::new()};

                    for ty in v {
                        let elem = CommonArgs{name: String::from("elem"),type_: ty.to_string()};
                        item.components.push(AllArgs::Common(elem));
                    }

                    arg.type_ = "array".to_string();
                    arg.components.push(AllArgs::Component(item));
                }

                if arg.type_.len() > 2 && arg.type_[arg.type_.len()-2..] == "[]".to_string() {
                    let mut name = arg.name[..].to_string() + "_item";
                    for i in &components {
                        if arg.type_[..arg.type_.len()-2] == i.name {
                            name = "".to_string();
                            name.push_str(&i.name);
                            break
                        }
                    }
                    if is_basic_type(&arg.type_[..arg.type_.len()-2]) {
                        let item = CommonArgs{name: name,type_: arg.type_[..arg.type_.len()-2].to_string()};
                        arg.components.push(AllArgs::Common(item));
                    } else {
                        let item = ComponentArgs{name: name,type_: arg.type_[..arg.type_.len()-2].to_string(),components:Vec::new()};
                        arg.components.push(AllArgs::Component(item));
                    }
                    arg.type_ = "array".to_string();
                }
            }
        }
    }

    //replace replace
    for c in &components {
        for funcs in &mut p.functions {
            for args in &mut funcs.inputs {
                if let AllArgs::Component(args) = args {
                    if c.name == args.type_ {
                        args.components.extend_from_slice(&c.components);
                        args.type_ = "struct".to_string();
                    }
                    if args.type_ == "array".to_string() {
                        for rcomponent in &mut args.components {
                            if let AllArgs::Component(rcomponent) = rcomponent {
                                if c.name == rcomponent.type_ {
                                    rcomponent.components.extend_from_slice(&c.components);
                                    rcomponent.type_ = "struct".to_string();
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    let encode =  serde_json::to_string_pretty(&p).unwrap();

    let mut file = File::create(abi_path)?;
    file.write_all(encode.as_bytes())?;
    Ok(())
}