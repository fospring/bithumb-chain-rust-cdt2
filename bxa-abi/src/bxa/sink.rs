//! Sink module;

use lib::*;
// use super::AbiType;
use super::{AbiType};
/// Sink for returning number of arguments
pub struct Sink {
	// capacity: usize,
	preamble: Vec<u8>,
}

impl Sink {
	/// New sink with known capacity
	pub fn new(capacity: usize) -> Self {
		Sink {
			// capacity: 32 * capacity,
			preamble: Vec::with_capacity(8 * capacity),
		}
	}

	/// write a byte
	pub fn write_byte(&mut self, b: u8){
		self.preamble.push(b)
	}

	/// write bytes
	pub fn write_bytes(&mut self, data: &[u8]) {
		self.preamble.extend_from_slice(data)
	}

	/// Consume `type` of `val` to the Sink
	pub fn push_type<T: AbiType>(&mut self, val: T) {
		val.push_type(self);
	}

	/// Consume `val` to the Sink
	pub fn push<T: AbiType>(&mut self, val: T) {
			val.encode(self)
	}

	/// Drain current Sink to the target vector
	pub fn drain_to(self, target: &mut Vec<u8>) {
		let preamble = self.preamble;
		target.reserve(preamble.len());
		target.extend_from_slice(&preamble);
	}

	/// Consume current Sink to produce a vector with content.
	/// May panic if declared number of arguments does not match the resulting number of bytes should be produced.
	pub fn finalize_panicking(self) -> Vec<u8> {
		// if self.preamble.len() != self.capacity { panic!("Underflow of pushed parameters {}/{}!", self.preamble.len(), self.capacity); }
		let result = self.preamble;
		result
	}

	/// Mutable reference to the Sink preamble
	pub fn preamble_mut(&mut self) -> &mut Vec<u8> {
		&mut self.preamble
	}
}
