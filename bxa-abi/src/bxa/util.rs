//! Utility module

use lib::*;

/// Converts u16 to right aligned array of 32 bytes.
pub fn pad_u16(value: u16) -> [u8; 2] {
	let mut padded = [0u8; 2];
	padded[0] = value as u8;
	padded[1] = (value >> 8) as u8;
	padded
}

/// Converts u32 to right aligned array of 32 bytes.
pub fn pad_u32(value: u32) -> [u8; 4] {
	let mut padded = [0u8; 4];
	padded[0] = value as u8;
	padded[1] = (value >> 8) as u8;
	padded[2] = (value >> 16) as u8;
	padded[3] = (value >> 24) as u8;
	padded
}

/// Converts u64 to right aligned array of 32 bytes.
pub fn pad_u64(value: u64) -> [u8; 8] {
	let mut padded = [0u8; 8];
	padded[0] = value as u8;
	padded[1] = (value >> 8) as u8;
	padded[2] = (value >> 16) as u8;
	padded[3] = (value >> 24) as u8;
	padded[4] = (value >> 32) as u8;
	padded[5] = (value >> 40) as u8;
	padded[6] = (value >> 48) as u8;
	padded[7] = (value >> 56) as u8;
	padded
}

/// Converts i64 to right aligned array of 32 bytes.
pub fn pad_i64(value: i64) -> [u8; 8] {
	if value >= 0 {
		return pad_u64(value as u64);
	}

	let mut padded = [0xffu8; 8];
	padded[0] = (value >> 56) as u8;
	padded[1] = (value >> 48) as u8;
	padded[2] = (value >> 40) as u8;
	padded[3] = (value >> 32) as u8;
	padded[4] = (value >> 24) as u8;
	padded[5] = (value >> 16) as u8;
	padded[6] = (value >> 8) as u8;
	padded[7] = value as u8;
	padded
}

/// Converts i32 to right aligned array of 32 bytes.
pub fn pad_i32(value: i32) -> [u8; 4] {
	if value >= 0 {
		return pad_u32(value as u32);
	}

	let mut padded = [0xffu8; 4];
	padded[0] = (value >> 24) as u8;
	padded[1] = (value >> 16) as u8;
	padded[2] = (value >> 8) as u8;
	padded[3] = value as u8;
	padded
}