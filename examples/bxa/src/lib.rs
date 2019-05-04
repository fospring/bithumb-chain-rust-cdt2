#![no_std]
#![allow(non_snake_case)]
#![feature(proc_macro_hygiene)]

extern crate bxa_std;
extern crate bxa_ethereum;
extern crate bxa_abi;
extern crate bxa_abi_derive;

use bxa_abi_derive::bxa_abi;
use bxa_abi::types::*;

#[bxa_abi(TokenEndpoint)]
pub trait TokenInterface {
    fn boo(&mut self) -> u32;
    fn add(&mut self, x: u32, y: u32) -> u32;
    fn addu64(&mut self, x: u64, y: u64) -> u64;
    fn s(&mut self) -> String;
    fn add_u8(&mut self, x: u8, y: u8) -> u8;
    fn add_u16(&mut self, x: u16, y: u16) -> u16;
}

pub struct TokenContract;

impl TokenInterface for TokenContract {

    fn boo(&mut self) -> u32{
        let TOTAL_SUPPLY_KEY = H256::from(
            [2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
        );
        bxa_ethereum::read(&TOTAL_SUPPLY_KEY);
        10_u32
    }

    fn add(&mut self, x: u32, y: u32) -> u32 {
        let TOTAL_SUPPLY_KEY = H256::from(
            [2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
        );
        bxa_ethereum::read(&TOTAL_SUPPLY_KEY);
        x + y
    }

    fn addu64(&mut self, x: u64, y: u64) -> u64 {
        let TOTAL_SUPPLY_KEY = H256::from(
            [2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
        );
        bxa_ethereum::read(&TOTAL_SUPPLY_KEY);
        x + y
    }

    fn s(&mut self) -> String {
        let mut hello = String::from("Hello,");
        hello.push(' ');
        hello
    }

    fn add_u8(&mut self, x: u8, y: u8) -> u8 {
        x+y
    }
    fn add_u16(&mut self, x: u16, y: u16) -> u16 {
       x+y
    }
}

use bxa_abi::bxa::EndpointInterface;

#[no_mangle]
pub fn call() {
    let mut endpoint = TokenEndpoint::new(TokenContract{});
    bxa_ethereum::ret(&endpoint.dispatch(&bxa_ethereum::input()));
}