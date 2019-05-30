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
use bxa_api::db;
use bxa_abi::bxa::*;
#[macro_use]
extern crate lazy_static;

const INNITIALIZE: &'static str = "INNITIALIZE";
const SYMBOL: &'static str = "ABC";
const TOTAL_SUPPLY: u64 = 100000000000;
lazy_static! {
    static ref ADMIN: Address = bxa_abi_derive::base58_to_address!("AZvWo4SpSpRL7Li7gqwgwEdWWjSUpPvn4Y");
    static ref RECIVER: Address = bxa_abi_derive::base58_to_address!("AHoGzMnbRmxpeJ9jgSEKbCT5exqvCxFXVH");
}


use bxa_abi_derive::abi_struct;

abi_extends!{
    #[derive(Clone,Debug,PartialEq)]
    pub struct Transfer {
        pub from: Address,
        pub to: Address,
        pub amount: u64,
    }
}

abi_extends!{
    pub struct Donater {
        pub donater: Address,
        pub amount: u64,
    }
}

#[bxa_abi(TokenEndpoint)]
pub trait TokenInterface {
    fn init(&mut self, receiver: Address) -> bool;
    fn get_symbol(&mut self) -> String;
    fn get_total_supply(&mut self) -> u64;
    fn transfer(&mut self,from: Address, to: Address, amount: u64) -> bool;
    fn muti_transfer(&mut self, args: Vec<Transfer>) -> bool;
    fn donate(&mut self, donater: Donater) -> bool;
    fn balance_of(&mut self,addr: Address) -> u64;
    fn tunple(&mut self,obj: (u64,u32)) -> u64;
    fn tunples(&mut self,obj: Vec<(u64,u32)>) -> u64;
    #[event]
    fn Transfer(&mut self, from: Address, to: Address, value: u64);
}

pub struct TokenContract;

impl TokenInterface for TokenContract {
    fn init(&mut self, receiver: Address) -> bool{
        let inited: bool = db::get::<_, bool>(INNITIALIZE).unwrap();
        if inited {
            return false
        } else {
            assert!(runtime::check_witness(&ADMIN));
            db::put(INNITIALIZE, true);
            db::put(receiver, TOTAL_SUPPLY);
            true
        }
    }
    fn get_symbol(&mut self) -> String {
        SYMBOL.to_string()
    }
    fn get_total_supply(&mut self) -> u64 {
        TOTAL_SUPPLY
    }
    fn transfer(&mut self, from: Address, to: Address, amount: u64) -> bool {
        assert!(runtime::check_witness(&from));
        let senderBalance = db::get::<_, u64>(from).unwrap_or_default();
        let recipientBalance: u64 = db::get(to).unwrap_or_default();
        if amount == 0_u64 || senderBalance < amount || to == from {
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
    fn muti_transfer(&mut self, args: Vec<Transfer>) -> bool {
        for trans in args {
            if ! self.transfer(trans.from, trans.to, trans.amount) {
                return false
            }
        }
        true
    }
    fn donate(&mut self, donater: Donater) -> bool {
        self.transfer(donater.donater, *RECIVER, donater.amount)
    }
    fn balance_of(&mut self, addr: Address) -> u64 {
        let balance = db::get(addr).unwrap_or(0_u64);
        balance
    }
    fn tunple(&mut self,obj: (u64,u32)) -> u64 {
        obj.0 + obj.1 as u64
    }
    fn tunples(&mut self,obj: Vec<(u64,u32)>) -> u64 {
        let mut res:u64 = 0;
        for item in obj {
            res = res + item.0;
            res = res + item.1 as u64;
        }
        res
    }
}


#[no_mangle]
pub fn call() {
    let mut endpoint = TokenEndpoint::new(TokenContract{});
    bxa_api::ret(&endpoint.dispatch(&bxa_api::input()));
}

#[test]
fn serialize(){
    let mut ts = Vec::new();
    let ts1 = Transfer{from: Address::new([0_u8;20]), to: Address::new([1_u8;20]),amount: 100};
    let ts2 = Transfer{from: Address::new([0_u8;20]), to: Address::new([1_u8;20]),amount: 100};
    ts.push(ts1.clone());
    ts.push(ts2.clone());
    let mut sink = Sink::new(4);
    sink.push(ts.clone());
    let bytes = sink.preamble_mut();
    let mut stream = Stream::new(bytes);

    let ts_n:Vec<Transfer> = stream.pop::<Vec<Transfer>>().unwrap();
    assert_eq!(ts.as_ptr(),ts_n.as_ptr());
}