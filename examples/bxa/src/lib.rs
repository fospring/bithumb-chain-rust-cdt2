#![no_std]
#![allow(non_snake_case)]
#![feature(proc_macro_hygiene)]

extern crate bxa_std;
extern crate bxa_api;
extern crate bxa_abi;
extern crate bxa_abi_derive;

use bxa_abi_derive::bxa_abi;
use bxa_abi::types::*;
use bxa_api as bxa;
use bxa_api::db;

#[bxa_abi(TokenEndpoint)]
pub trait TokenInterface {
    fn constructor(&mut self, receiver: Address, total_supply: U256);
    fn boo(&mut self) -> bool;
    fn add_u8(&mut self, x: u8, y: u8) -> u8;
    fn add_u32(&mut self, x: u32, y: u32) -> u32;
    fn add_u64(&mut self, x: u64, y: u64) -> u64;
    fn str_hello(&mut self) -> String;
    fn add_i32(&mut self, x: i32, y: i32) -> i32;
    fn add_i64(&mut self, x: i64, y: i64) -> i64;
    fn add_u64_slice(&mut self,  arr_u64: Vec<u64>) -> u64;
    fn init(&mut self, reciver: Address) -> U256;
    fn transfer(&mut self,from: Address, _to: Address, _amount: U256) -> bool;
    fn balance_of(&mut self,addr: Address) -> U256;
    #[event]
    fn Transfer(&mut self, from: Address, to: Address, value: U256);
}

pub struct TokenContract;

impl TokenInterface for TokenContract {
    /// The constructor
    fn constructor(&mut self, receiver: Address, total_supply: U256) {
        // Set up the total supply for the token

        db::put(receiver, total_supply);
    }
    fn boo(&mut self) -> bool{true}
    fn add_u8(&mut self, x: u8, y: u8) -> u8 {
        x+y
    }
    fn add_u32(&mut self, x: u32, y: u32) -> u32 {x + y}
    fn add_u64(&mut self, x: u64, y: u64) -> u64 {x + y}

    fn str_hello(&mut self) -> String {
        let mut hello = String::from("Hello,");
        hello.push(' ');
        hello
    }

    fn add_i32(&mut self, x: i32, y: i32) -> i32{
        x+y
    }
    fn add_i64(&mut self, x: i64, y: i64) -> i64{
        x+y
    }

    fn add_u64_slice(&mut self, arr_u64: Vec<u64>) -> u64 {
        let mut result = 0_u64;
        for i in arr_u64 {
            result = result + i
        }
        result
    }

    fn init(&mut self, reciver: Address) -> U256 {
        db::put(reciver, U256::from(1000000));
        let issue_balance = db::get(reciver).unwrap_or(U256::zero());
        issue_balance
    }

    fn transfer(&mut self, from: Address, to: Address, amount: U256) -> bool {
        let senderBalance: U256 = db::get(from).unwrap_or_default();
        let recipientBalance: U256 = db::get(to).unwrap_or_default();
        if amount == 0.into() || senderBalance < amount || to == from {
            false
        } else {
            let new_sender_balance = senderBalance - amount;
            let new_recipient_balance = recipientBalance + amount;
            db::put(from, new_sender_balance);
            db::put(to, new_recipient_balance);
            self.Transfer(from, to, amount);
            true
        }
    }

    fn balance_of(&mut self, addr: Address) -> U256 {
        let balance = db::get(addr).unwrap_or(U256::zero());
        balance
    }
}

use bxa_abi::bxa::EndpointInterface;

#[no_mangle]
pub fn call() {
    let mut endpoint = TokenEndpoint::new(TokenContract{});
    bxa_api::ret(&endpoint.dispatch(&bxa_api::input()));
}

#[no_mangle]
pub fn deploy() {
    let mut endpoint = TokenEndpoint::new(TokenContract{});
    endpoint.dispatch_ctor(&bxa_api::input());
}