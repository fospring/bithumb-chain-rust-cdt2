//! Externs library to interact with Ethereum-like network

#![cfg_attr(not(feature="std"), no_std)]

extern crate bxa_std;
extern crate bxa_abi;

pub mod db;
mod ext;
mod storage;

//pub use db::*;
pub use ext::*;
