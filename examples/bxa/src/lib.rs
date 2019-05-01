#![no_std]
#![allow(non_snake_case)]
#![feature(proc_macro_hygiene)]

extern crate bxa_std;
extern crate bxa_ethereum;
extern crate bxa_abi;
extern crate bxa_abi_derive;

#[macro_use]
extern crate lazy_static;

use bxa_abi::types::*;

// eth_abi is a procedural macros https://doc.rust-lang.org/book/first-edition/procedural-macros.html
use bxa_abi_derive::bxa_abi;

lazy_static! {
    static ref TOTAL_SUPPLY_KEY: H256 =
        H256::from(
            [2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
        );
}

#[bxa_abi(TokenEndpoint, TokenClient)]
pub trait TokenInterface {
    /// The constructor
//    fn constructor(&mut self, _total_supply: U256);
    /// Total amount of tokens
    #[constant]
    fn totalSupply(&mut self) -> U256;
    /// What is the balance of a particular account?
    #[constant]
    fn balanceOf(&mut self, _owner: Address) -> U256;
    /// Transfer the balance from owner's account to another account
    fn transfer(&mut self, _to: Address, _amount: U256) -> bool;
    /// Event declaration
    #[event]
    fn Transfer(&mut self, indexed_from: Address, indexed_to: Address, _value: U256);
}

pub struct TokenContract;

impl TokenInterface for TokenContract {
//    fn constructor(&mut self, total_supply: U256) {
//        // Set up the total supply for the token
//        bxa_ethereum::write(&TOTAL_SUPPLY_KEY, &total_supply.into());
//    }

    fn totalSupply(&mut self) -> U256 {
        U256::from_big_endian(&bxa_ethereum::read(&TOTAL_SUPPLY_KEY))
    }

    fn balanceOf(&mut self, owner: Address) -> U256 {
        read_balance_of(&owner)
    }

    fn transfer(&mut self, to: Address, amount: U256) -> bool {
        let sender = bxa_ethereum::sender();
        let senderBalance = read_balance_of(&sender);
        let recipientBalance = read_balance_of(&to);
        if amount == 0.into() || senderBalance < amount || to == sender {
            false
        } else {
            let new_sender_balance = senderBalance - amount;
            let new_recipient_balance = recipientBalance + amount;
            bxa_ethereum::write(&balance_key(&sender), &new_sender_balance.into());
            bxa_ethereum::write(&balance_key(&to), &new_recipient_balance.into());
            self.Transfer(sender, to, amount);
            true
        }
    }
}

// Reads balance by address
fn read_balance_of(owner: &Address) -> U256 {
    U256::from_big_endian(&bxa_ethereum::read(&balance_key(owner)))
}

// Generates a balance key for some address.
// Used to map balances with their owners.
fn balance_key(address: &Address) -> H256 {
    let mut key = H256::from(*address);
    key.as_bytes_mut()[0] = 1; // just a naive "namespace";
    key
}
// Declares the dispatch and dispatch_ctor methods
use bxa_abi::bxa::EndpointInterface;

#[no_mangle]
pub fn call() {
    let mut endpoint = TokenEndpoint::new(TokenContract{});
    // Read http://solidity.readthedocs.io/en/develop/abi-spec.html#formal-specification-of-the-encoding for details
    bxa_ethereum::ret(&endpoint.dispatch(&bxa_ethereum::input()));
}

//#[no_mangle]
//pub fn deploy() {
//    let mut endpoint = TokenEndpoint::new(TokenContract{});
//    endpoint.dispatch_ctor(&bxa_ethereum::input());
//}
