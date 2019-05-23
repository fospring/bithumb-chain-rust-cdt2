
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
use std::ptr::null;

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
    pub inputs: Vec<Type>,
    pub outputs: Vec<Type>,
}

#[derive(Deserialize, Serialize, Debug)]
pub struct Event {
    pub name: String,
    pub inputs: Vec<Type>,
}

#[derive(Deserialize, Serialize, Debug, Clone)]
pub struct Type {
    pub name: String,
    #[serde(rename = "type")]
    pub type_: String,
    pub component: Vec<Type>,
}

fn main() -> io::Result<()> {
    let matches = App::new("gen-address")
        .version("0.1.0")
        .author("BXA")
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
    let mut file = File::open("./component.json")?;
    let mut data = String::new();
    file.read_to_string(&mut data).unwrap();
    let component : Vec<Type> = serde_json::from_str(&data).unwrap();

    //array extend
    for funcs in &mut p.functions {
        for args in &mut funcs.inputs {
            if args.type_.len() > 2 && args.type_[args.type_.len()-2..] == "[]".to_string() {
                let mut name = args.name[..].to_string() + "_item";
                for i in &component {
                    if args.type_[..args.type_.len()-2] == i.name {
                        name = "".to_string();
                        name.push_str(&i.name);
                        break
                    }
                }
                let item = Type{name: name,type_: args.type_[..args.type_.len()-2].to_string(),component:Vec::new()};
                args.component.push(item);
                args.type_ = "array".to_string();
            }
        }
    }

    //replace replace
    for c in &component {
        for funcs in &mut p.functions {
            for args in &mut funcs.inputs {
                if c.name == args.type_ {
                    args.component.extend_from_slice(&c.component);
                    args.type_ = "struct".to_string();
                }
                if args.type_ == "array".to_string() {
                    for rcomponent in &mut args.component {
                        if c.name == rcomponent.type_ {
                            rcomponent.component.extend_from_slice(&c.component);
                            rcomponent.type_ = "struct".to_string();
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