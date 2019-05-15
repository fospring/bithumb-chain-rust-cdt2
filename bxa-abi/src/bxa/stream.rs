//! Stream module

use lib::*;
use super::{AbiType, Error, DbSerializer};
use byteorder::{ByteOrder, LittleEndian};


fn encode_size(val: u32) -> usize {
	if val < 0xfe {
		1
	} else if val <= 0xffff {
		3
	} else {
		5
	}
}

/// Stream interpretation of incoming payload
pub struct Stream<'a> {
	payload: &'a [u8],
	position: usize,
}

impl<'a> Stream<'a> {

	/// New stream for known payload
	pub fn new(raw: &'a [u8]) -> Self {
		Stream {
			payload: raw,
			position: 0,
		}
	}

	/// Pop next argument of known type
	pub fn pop<T: AbiType>(&mut self) -> Result<T, Error> {
		T::decode(self)
	}

	/// Current position for the stream
	pub fn position(&self) -> usize { self.position }

	/// Advance stream position for `amount` bytes
	pub fn advance(&mut self, amount: usize) -> Result<usize, Error> {
		if self.position + amount > self.payload.len() {
			return Err(Error::UnexpectedEof);
		}

		let old_position = self.position;
		self.position += amount;
		Ok(old_position)
	}

	/// Stream payload
	pub fn payload(&self) -> &[u8] {
		self.payload
	}

	/// read into
	pub fn read_into(&mut self, arr: &mut [u8]) -> Result<(), Error> {
		let bytes = self.read_bytes(arr.len())?;
		arr.copy_from_slice(bytes);
		Ok(())
	}

	/// read bytes
	pub fn read_bytes(&mut self, len: usize) -> Result<&[u8], Error> {
		if self.position + len > self.payload.len() {
			Err(Error::UnexpectedEof)
		} else {
			let bytes = &self.payload[self.position..self.position + len];
			self.position += len;
			Ok(bytes)
		}
	}

	/// read u16
	pub fn read_u16(&mut self) -> Result<u16, Error> {
		Ok(LittleEndian::read_u16(self.read_bytes(2)?))
	}

	/// read u32
	pub fn read_u32(&mut self) -> Result<u32, Error> {
		Ok(LittleEndian::read_u32(self.read_bytes(4)?))
	}

	/// read lens
	pub fn read_len(&mut self) -> Result<u32, Error> {
		match self.read_byte() ? {
			0xFE => self.read_u16().map(|v|(3, v as u32)),
			0xFF => self.read_u32().map(|v|(5, v as u32)),
			val => Ok((1, val as u32)),
		}
		.and_then(|(len,val)| match len == encode_size(val){
				true => Ok(val),
				false => Err(Error::UnexpectedData),
		})
	}

	/// read byte as u8
	pub fn read_byte(&mut self) -> Result<u8, Error> {
		if self.position >= self.payload.len() {
			Err(Error::UnexpectedEof)
		} else {
			let b = self.payload[self.position];
			match self.advance(1) {
				Ok(_) => Ok(b),
				Err(err) => Err(err),
			}
		}
	}

	/// Deserialize from db
	pub fn pop_db<T:DbSerializer>(&mut self) -> Result<T, Error> {
		T::decode_db(self)
	}
}
