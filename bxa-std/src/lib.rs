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

//#[cfg(not(feature = "std"))]
//extern crate pwasm_alloc;

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
/// bitcoin base58 encoding
pub mod base58;
pub mod types;

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
