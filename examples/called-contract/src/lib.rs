#![no_std]
#![allow(non_snake_case)]
#![feature(proc_macro_hygiene)]

extern crate bxa_std;
extern crate bxa_api;
extern crate bxa_abi;
extern crate bxa_abi_derive;

use bxa_abi_derive::bxa_abi;
use bxa_abi::bxa::*;

#[bxa_abi(TokenEndpoint)]
pub trait CalledContractInterface {
    fn double(&mut self,number: u64) -> u64;
    fn add(&mut self,number: u32) -> u32;
}

pub struct CalledContract;

impl CalledContractInterface for CalledContract {
    fn double(&mut self, number: u64) -> u64 {
        2 * number
    }
    fn add(&mut self,number: u32) -> u32 { number + 1}
}

#[no_mangle]
pub fn call() {
    let mut endpoint = TokenEndpoint::new(CalledContract{});
    bxa_api::ret(&endpoint.dispatch(&bxa_api::input()));
}