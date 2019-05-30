#![no_std]
#![allow(non_snake_case)]
#![feature(proc_macro_hygiene)]

extern crate bxa_std;
extern crate bxa_api;
#[macro_use]
extern crate bxa_abi;
extern crate bxa_abi_derive;

use bxa_abi_derive::bxa_abi;
use bxa_abi::types::*;
use bxa_api as runtime;
use bxa_abi::bxa::*;

use bxa_abi_derive::abi_struct;
abi_extends!{
    #[derive(Clone,Debug,PartialEq)]
    pub struct Transfer {
        pub from: Address,
        pub to: Address,
        pub amount: u64,
    }
}

#[bxa_abi(TokenEndpoint)]
pub trait CallContractInterface {
    fn call_contract(&mut self, ctr: String, number: u64) -> u64;
    fn call_native_transfer(&mut self, ctr: String, transferArgs:Vec<(Address,Address,u64)>) -> bool;
    fn call_native_transfer2(&mut self, ctr: String, transferArgs:Vec<Transfer>) -> bool;
    fn call_native_symbol(&mut self, ctr: String) -> String;
}

pub struct CallContract;

impl CallContractInterface for CallContract {
    fn call_contract(&mut self, ctr: String, number: u64) -> u64 {
        let mut sink = Sink::new(2);
        let method = String::from("double");
        let mut res = [0_u8;5];
        sink.push(number);
        runtime::call_code(&ctr, method.as_bytes(),sink.preamble_mut(),&mut res).unwrap();
        let mut stream = Stream::new(&res);
        let ret = stream.pop::<u64>().unwrap();
        ret
    }
    fn call_native_transfer(&mut self, ctr: String, transferArgs:Vec<(Address,Address,u64)>) -> bool {
        let mut sink = Sink::new(2);
        let method = String::from("transfer");
        let mut res = [0_u8;5];
        sink.push(transferArgs);
        runtime::call_code(&ctr, method.as_bytes(),sink.preamble_mut(),&mut res).unwrap();
        true
    }
    fn call_native_transfer2(&mut self, ctr: String, transferArgs:Vec<Transfer>) -> bool {
        let mut sink = Sink::new(2);
        let method = String::from("transfer");
        let mut res = [0_u8;5];
        sink.push(transferArgs);
        runtime::call_code(&ctr, method.as_bytes(),sink.preamble_mut(),&mut res).unwrap();
        true
    }
    fn call_native_symbol(&mut self, ctr: String) -> String {
        let mut sink = Sink::new(2);
        let method = String::from("symbol");
        let mut res = [0_u8;10];
        runtime::call_code(&ctr, method.as_bytes(),sink.preamble_mut(),&mut res).unwrap();
        let mut stream = Stream::new(&res);
        let ret = stream.pop::<String>().unwrap();
        ret
    }
}

#[no_mangle]
pub fn call() {
    let mut endpoint = TokenEndpoint::new(CallContract{});
    bxa_api::ret(&endpoint.dispatch(&bxa_api::input()));
}

#[test]
fn serialize(){
    let mut ts = Vec::new();
    let ts1 = Transfer{from: Address::new([0_u8;20]), to: Address::new([0_u8;20]),amount: 100};
    let ts2 = Transfer{from: Address::new([0_u8;20]), to: Address::new([0_u8;20]),amount: 100};
    ts.push(ts1.clone());
    ts.push(ts2.clone());
    let mut sink = Sink::new(4);
    sink.push(String::from("transfer"));
    sink.push(ts.clone());
    let bytes = sink.preamble_mut();
    let mut stream = Stream::new(bytes);

    let s = stream.pop::<String>().unwrap();
    assert_eq!(String::from("transfer"),s);
    let ts_n:Vec<Transfer> = stream.pop::<Vec<Transfer>>().unwrap();
    for val in ts_n {
        assert_eq!(val.from,Address::new([0_u8;20]));
        assert_eq!(val.amount,100_u64);
    }
}

#[test]
fn params(){
    let mut sink = Sink::new(10);
    sink.push(String::from("call_native_transfer2"));
    sink.push(String::from("0000000000000000000000000000000000000001"));
    let mut s = Vec::new();
    s.push(Transfer{from:Address::new([0_u8;20]),to:Address::new([0_u8;20]),amount:100_u64});
    sink.push(s);
    let bytes:&[u8] = &[7_u8,21,99,97,108,108,95,110,97,116,105,118,101,95,116,114,97,110,115,102,101,114, 50,
        7, 40, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48,
        48, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48, 49, 12, 1, 13, 10, 199, 20, 153, 223, 232, 208, 165,
        207, 92, 28, 136, 202, 9, 193, 175, 137, 243, 71, 224, 161, 10, 145, 188, 61, 81, 255, 163, 170, 223, 10,
        197, 206, 214, 44, 16, 0, 140, 162, 211, 164, 227, 6, 100];
    let by = sink.finalize_panicking();
    assert_eq!(bytes.len(),by.len());
    assert_eq!(bytes,&by[..]);
    let mut stream = Stream::new(bytes);
    let method = stream.pop::<String>().unwrap();
    assert_eq!(String::from("call_native_transfer2"),method);
    let address = stream.pop::<String>().unwrap();
    assert_eq!(String::from("0000000000000000000000000000000000000001"),address);
    let ts:Vec<Transfer> = stream.pop::<Vec<Transfer>>().unwrap();
    assert_eq!(Transfer{from:Address::new([0_u8;20]),to:Address::new([0_u8;20]),amount:100_u64},ts[1])
}