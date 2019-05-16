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
use bxa_abi::bxa::*;

const SYMBOL: &'static str = "ABC";
const TOTAL_SUPPLY: u64 = 100000000000;


#[bxa_abi(TokenEndpoint)]
pub trait TokenInterface {
    fn init(&mut self, receiver: Address);
    fn get_symbol(&mut self) -> String;
    fn get_total_supply(&mut self) -> u64;
    fn transfer(&mut self,from: Address, to: Address, amount: u64) -> bool;
    fn balance_of(&mut self,addr: Address) -> u64;
    #[event]
    fn Transfer(&mut self, from: Address, to: Address, value: u64);
}

pub struct TokenContract;

impl TokenInterface for TokenContract {
    fn init(&mut self, receiver: Address) {
        db::put(receiver, TOTAL_SUPPLY);
    }
    fn get_symbol(&mut self) -> String {
        SYMBOL.to_string()
    }
    fn get_total_supply(&mut self) -> u64 {
        TOTAL_SUPPLY
    }
    fn transfer(&mut self, from: Address, to: Address, amount: u64) -> bool {
        let senderBalance: u64 = db::get(from).unwrap_or_default();
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
    fn balance_of(&mut self, addr: Address) -> u64 {
        let balance = db::get(addr).unwrap_or(0_u64);
        balance
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