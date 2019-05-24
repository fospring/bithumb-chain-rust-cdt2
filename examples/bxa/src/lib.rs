#![no_std]
#![allow(non_snake_case)]
#![feature(proc_macro_hygiene)]
#![feature(custom_attribute)]
extern crate bxa_std;
extern crate bxa_api;
#[macro_use]
extern crate bxa_abi;
extern crate bxa_abi_derive;

#[macro_use]
extern crate lazy_static;

use bxa_abi_derive::bxa_abi;
use bxa_abi::types::*;
use bxa_api as bxa;
use bxa_api::db;
use bxa_abi::bxa::*;

mod serialize;
use serialize::Student;

const SYMBOL: &'static str = "ABC";
lazy_static! {
    static ref TOTAL_SUPPLY: U256 = { U256::from(1000000) };
}

#[bxa_abi(TokenEndpoint)]
pub trait TokenInterface {
    fn constructor(&mut self, receiver: Address);

    fn block_hash(&mut self, block_num: u64) -> H256;
    fn boo(&mut self, x: bool, y: bool) -> bool;
    fn add_u8(&mut self, x: u8, y: u8) -> u8;
    fn add_u32(&mut self, x: u32, y: u32) -> u32;
    fn double_u32(&mut self, x: u32) -> u32;
    fn add_u64(&mut self, x: u64, y: u64) -> u64;
    fn str_hello(&mut self, key: String, hello: String, name: String) -> String;
    fn get_str(&mut self, key:String) -> String;
    fn add_i32(&mut self, x: i32, y: i32) -> i32;
    fn add_i64(&mut self, x: i64, y: i64) -> i64;
    fn add_u64_slice(&mut self,  arr_u64: Vec<u64>) -> u64;

    fn add_u8_slice(&mut self,  arr_u8: Vec<u8>) -> u32;

    fn get_symbol(&mut self) -> String;
    fn get_total_supply(&mut self) -> U256;
    fn transfer(&mut self,from: Address, _to: Address, _amount: U256) -> bool;
    fn balance_of(&mut self,addr: Address) -> U256;
    #[event]
    fn Transfer(&mut self, from: Address, to: Address, value: U256);

    fn get_student_point(&mut self, student: Student) -> u32;

    fn get_aver_points(&mut self, students: Vec<Student>) -> u32;
}

pub struct TokenContract;

impl TokenInterface for TokenContract {
    fn constructor(&mut self, receiver: Address) {
        db::put(receiver, *TOTAL_SUPPLY);
    }
    fn block_hash(&mut self, block_num: u64) -> H256{
        bxa::block_hash(block_num)
    }
    fn boo(&mut self, x: bool, y: bool) -> bool{
        x || y
    }
    fn add_u8(&mut self, x: u8, y: u8) -> u8 {
        x+y
    }
    fn add_u32(&mut self, x: u32, y: u32) -> u32 {x + y}
    fn double_u32(&mut self, x: u32) -> u32 {2*x}
    fn add_u64(&mut self, x: u64, y: u64) -> u64 {x + y}

    fn str_hello(&mut self, key: String, hello: String, name: String) -> String {
        let mut greet = String::from("");
        greet.push_str(&hello);
        greet.push(' ');
        greet.push_str(&name);
        db::put(key,greet.clone());
        greet
    }
    fn get_str(&mut self, key:String) -> String {
        db::get(key).unwrap_or_default()
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

    fn add_u8_slice(&mut self,  arr_u8: Vec<u8>) -> u32 {
        let mut result = 0_u32;
        for i in arr_u8 {
            result = result + (i as u32)
        }
        result
    }

    fn get_symbol(&mut self) -> String {
        SYMBOL.to_string()
    }
    fn get_total_supply(&mut self) -> U256 {
        *TOTAL_SUPPLY
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

    fn get_student_point(&mut self, student: Student) -> u32 {
        student.score
    }

    fn get_aver_points(&mut self, students: Vec<Student>) -> u32 {
        let mut total_points = 0_u32;
        for s in &students {
            total_points = total_points + s.score;
        }
        total_points/(students.len() as u32)
    }
}

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