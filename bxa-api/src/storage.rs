//! Storage extensions for pwasm-ethereum.
//! Storage api is a key-value storage where both key and value are 32 bytes in len
use bxa_std::{vec, Vec};
extern "C" {
	fn storage_read(key: *const u8, klen: u32, val: *mut u8, vlen: u32, offset: u32, vt: u8) -> u32;
	fn storage_write(key: *const u8, klen: u32, src: *const u8, vlen: u32);
	fn storage_delete(key: *const u8, klen:u32);
}

/// Performs read from the storage.
pub fn read(key: &[u8], vt: u8) -> Option<Vec<u8>> {
	const INITLEN: usize = 32;
	let mut dst = vec![0; INITLEN];
	let size = unsafe {
		storage_read(key.as_ptr(), key.len() as u32,dst.as_mut_ptr(), dst.len() as u32, 0, vt)
	};

	if size == core::u32::MAX {
		return None
	}

	let size = size as usize;
	dst.resize(size, 0);
	if size > INITLEN {
		let dest = &mut dst[INITLEN..];
		debug_assert!(dest.len() == size - INITLEN);
		unsafe {
			storage_read(key.as_ptr(), key.len() as u32, dest.as_mut_ptr(), dest.len() as u32, INITLEN as u32, vt)
		};
	}
	Some(dst)
}

/// Performs write to the storage
pub fn write(key: &[u8], val: &[u8]) {
	unsafe {
		storage_write(key.as_ptr(), key.len() as u32, val.as_ptr(), val.len() as u32);
	}
}

/// Performs delete from the storage
pub fn delete(key: &[u8]) {
	unsafe {
		storage_delete(key.as_ptr(), key.len() as u32);
	}
}
