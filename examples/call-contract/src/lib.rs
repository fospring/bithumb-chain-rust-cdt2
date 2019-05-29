#![no_std]
#![allow(non_snake_case)]
#![feature(proc_macro_hygiene)]

extern crate bxa_std;
extern crate bxa_api;
extern crate bxa_abi;
extern crate bxa_abi_derive;

use bxa_abi_derive::bxa_abi;
use bxa_abi::types::*;
use bxa_api as runtime;
use bxa_abi::bxa::*;

#[bxa_abi(TokenEndpoint)]
pub trait CallContractInterface {
    fn call_contract(&mut self, ctr: String, number: u64) -> u64;
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
}

#[no_mangle]
pub fn call() {
    let mut endpoint = TokenEndpoint::new(CallContract{});
    bxa_api::ret(&endpoint.dispatch(&bxa_api::input()));
}