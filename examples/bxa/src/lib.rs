#![no_std]
#![allow(non_snake_case)]
#![feature(proc_macro_hygiene)]

extern crate bxa_std;
extern crate bxa_ethereum;
extern crate bxa_abi;
extern crate bxa_abi_derive;

use bxa_abi_derive::bxa_abi;
use bxa_abi::types::*;
use bxa_ethereum as bxa;

#[bxa_abi(TokenEndpoint)]
pub trait TokenInterface {
    fn boo(&mut self) -> u32;
    fn add(&mut self, x: u32, y: u32) -> u32;
    fn addu64(&mut self, x: u64, y: u64) -> u64;
    fn s(&mut self) -> String;
    fn add_u8(&mut self, x: u8, y: u8) -> u8;
    fn add_i32(&mut self, x: i32, y: i32) -> i32;
    fn add_i64(&mut self, x: i64, y: i64) -> i64;
    fn transfer(&mut self, _to: Address, _amount: U256) -> bool;
    #[event]
    fn Transfer(&mut self, indexed_from: Address, indexed_to: Address, _value: U256);
}

// Reads balance by address
fn read_balance_of(owner: &Address) -> U256 {
    U256::from_little_endian(&bxa::read(&balance_key(owner)))
}

// Generates a balance key for some address.
// Used to map balances with their owners.
fn balance_key(address: &Address) -> H256 {
    let mut key = H256::from(*address);
    key.as_fixed_bytes_mut()[0] = 1; // just a naiive "namespace";
    key
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

    fn add_i32(&mut self, x: i32, y: i32) -> i32{
        x+y
    }
    fn add_i64(&mut self, x: i64, y: i64) -> i64{
        x+y
    }
    fn transfer(&mut self, to: Address, amount: U256) -> bool {
        let sender = bxa::sender();
        let senderBalance = read_balance_of(&sender);
        let recipientBalance = read_balance_of(&to);
        if amount == 0.into() || senderBalance < amount || to == sender {
            false
        } else {
            let new_sender_balance = senderBalance - amount;
            let new_recipient_balance = recipientBalance + amount;
            // TODO: impl From<U256> for H256 makes convertion to big endian. Could be optimized
            bxa::write(&balance_key(&sender), &new_sender_balance.into());
            bxa::write(&balance_key(&to), &new_recipient_balance.into());
            self.Transfer(sender, to, amount);
            true
        }
    }
}

use bxa_abi::bxa::EndpointInterface;

#[no_mangle]
pub fn call() {
    let mut endpoint = TokenEndpoint::new(TokenContract{});
    bxa_ethereum::ret(&endpoint.dispatch(&bxa_ethereum::input()));
}