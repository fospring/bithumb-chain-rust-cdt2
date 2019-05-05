//! Externs library to interact with Ethereum-like network

#![cfg_attr(not(feature="std"), no_std)]

extern crate bxa_std;
extern crate bxa_abi;

mod database;
mod ext;
mod storage;

pub use database::*;
pub use ext::*;
pub use storage::*;
