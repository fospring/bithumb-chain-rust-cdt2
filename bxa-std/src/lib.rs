//! Standard library for parity wasm programs
#![no_std]
#![cfg_attr(not(feature = "std"), no_std)]
#![cfg_attr(feature = "strict", deny(warnings))]
#![feature(lang_items)]
#![feature(link_args)]
#![feature(alloc)]
#![feature(core_intrinsics)]
#![feature(panic_info_message)]

#![warn(missing_docs)]

#[cfg(feature = "std")]
extern crate core;

/// Error for decoding rust types from stream
#[derive(Debug, PartialEq, Eq)]
pub enum Error {
	/// Invalid bool for provided input
	InvalidBool,
	/// Invalid u32 for provided input
	InvalidU32,
	/// Invalid u64 for provided input
	InvalidU64,
	/// Data size out  of range for provided input
	DataSizeOutOfRange,
	/// Unexpected end of the stream
	UnexpectedEof,
	/// Unexpected data the stream
	UnexpectedData,
	/// Other error
	Other,
}

mod lib {

	mod core {
		#[cfg(feature = "std")]
		pub use std::*;
		#[cfg(not(feature = "std"))]
		pub use core::*;
	}

	pub use self::core::{cmp, iter, mem, ops, slice, str};
	pub use self::core::{i8, i16, i32, i64, isize};
	pub use self::core::{u8, u16, u32, u64, usize};

	pub use self::core::cell::{Cell, RefCell};
	pub use self::core::clone::{self, Clone};
	pub use self::core::convert::{self, From, Into};
	pub use self::core::default::{self, Default};
	pub use self::core::fmt::{self, Debug, Display};
	pub use self::core::marker::{self, PhantomData};
	pub use self::core::option::{self, Option};
	pub use self::core::result::{self, Result};

	#[cfg(feature = "std")]
	pub use std::borrow::{Cow, ToOwned};
	#[cfg(not(feature = "std"))]
	pub use alloc::borrow::{Cow, ToOwned};

	#[cfg(feature = "std")]
	pub use std::string::String;
	#[cfg(not(feature = "std"))]
	pub use alloc::string::{String, ToString};

	#[cfg(feature = "std")]
	pub use std::vec::Vec;
	#[cfg(not(feature = "std"))]
	pub use alloc::vec::Vec;

	#[cfg(feature = "std")]
	pub use std::boxed::Box;
	#[cfg(not(feature = "std"))]
	pub use alloc::boxed::Box;
}

extern crate wee_alloc;

#[global_allocator]
static ALLOC: wee_alloc::WeeAlloc = wee_alloc::WeeAlloc::INIT;

#[cfg(not(feature = "std"))]
extern crate pwasm_libc;

#[allow(unused)]
#[macro_use]
extern crate alloc;
pub use alloc::{vec, format};

extern crate byteorder;

#[macro_use]
extern crate fixed_hash;

extern crate uint;

extern crate num;
extern crate sha2;

use byteorder::{LittleEndian, ByteOrder};

pub use alloc::boxed::Box;
pub use alloc::string::{String,ToString};
pub use alloc::str;
pub use alloc::vec::Vec;
pub mod base58;
pub mod types;
pub mod transaction;
pub mod serialize;
pub mod sink;
pub mod stream;
pub mod tx_action;
pub mod contract_info;
pub mod tx_attribute;
pub mod sig;

// Safe wrapper around debug logging
pub mod logger;

mod panic;

////#[cfg(not(test))]
//#[no_mangle]
//#[cfg(not(feature = "std"))]
//pub use panic::panic_fmt;
////
////#[cfg(not(test))]
//#[no_mangle]
//#[cfg(not(feature = "std"))]
//pub use panic::oom;

/// Read u32 using native endianness
pub fn read_u32(slc: &[u8]) -> u32 {
	LittleEndian::read_u32(slc)
}

/// Write u32 using native endianness
pub fn write_u32(dst: &mut [u8], val: u32) {
	LittleEndian::write_u32(dst, val)
}

/// Write ptr using native endianness
pub fn write_ptr(dst: &mut [u8], ptr: *mut u8) {
	// todo: consider: add assert that arch is 32bit
	write_u32(dst, ptr as usize as u32);
}

/// Read u64 using native endianness
pub fn read_u64(slc: &[u8]) -> u64 {
	LittleEndian::read_u64(slc)
}

/// Write u64 using native endianness
pub fn write_u64(dst: &mut [u8], val: u64) {
	LittleEndian::write_u64(dst, val)
}

