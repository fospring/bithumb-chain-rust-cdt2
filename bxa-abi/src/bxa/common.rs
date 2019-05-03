//! Common types encoding/decoding

use lib::*;
use super::{util, Stream, AbiType, Sink, Error};
use super::types::{Address, H256, U256};
use bxa_std::str::from_utf8;

impl AbiType for u8 {
	fn decode(stream: &mut Stream) -> Result<Self, Error> {
		stream.read_byte()
	}

	fn encode(self, sink: &mut Sink) {
		sink.write_byte(self);
	}
}

impl AbiType for u32 {
	fn decode(stream: &mut Stream) -> Result<Self, Error> {
		let previous_position = stream.advance(4)?;

		let slice = &stream.payload()[previous_position..stream.position()];
		let result = (slice[0] as u32) +
			((slice[1] as u32) << 8) +
			((slice[2] as u32) << 16) +
			((slice[3] as u32)<< 24);

		Ok(result)
	}

	fn encode(self, sink: &mut Sink) {
		sink.preamble_mut().extend_from_slice(&util::pad_u32(self)[..]);
	}
}


impl AbiType for u16 {
	fn decode(stream: &mut Stream) -> Result<Self, Error> {
		let previous_position = stream.advance(2)?;

		let slice = &stream.payload()[previous_position..stream.position()];
		let result = (slice[0] as u16) +
			((slice[1] as u16) << 8);

		Ok(result)
	}

	fn encode(self, sink: &mut Sink) {
		sink.preamble_mut().extend_from_slice(&util::pad_u16(self)[..]);
	}

}

impl AbiType for u64 {
	fn decode(stream: &mut Stream) -> Result<Self, Error> {
		let previous_position = stream.advance(8)?;

		let slice = &stream.payload()[previous_position..stream.position()];

		let result =
			(slice[0] as u64) +
			((slice[1] as u64) << 8) +
			((slice[2] as u64) << 16) +
			((slice[3] as u64) << 24) +
			((slice[4] as u64) << 32) +
			((slice[5] as u64) << 40) +
			((slice[6] as u64) << 48) +
			((slice[7] as u64) << 56);

		Ok(result)
	}

	fn encode(self, sink: &mut Sink) {
		sink.preamble_mut().extend_from_slice(&util::pad_u64(self)[..]);
	}

}

impl AbiType for String {
	fn decode(stream: &mut Stream) -> Result<Self, Error> {
		let len = stream.read_len()? as usize;

		let result = from_utf8(&stream.payload()[stream.position()..stream.position() + len])
			.map_err(|_err| Error::Other)?
			.to_string();

		stream.advance(len)?;

		Ok(result)
	}

	fn encode(self, sink: &mut Sink) {
		let mut val = self.into_bytes();
		let len = val.len();
		if len % 32 != 0 {
			val.resize(len + (32 - len % 32), 0);
		}
		sink.push(len as u32);
		sink.preamble_mut().extend_from_slice(&val[..]);
	}

}

impl AbiType for bool {
	fn decode(stream: &mut Stream) -> Result<Self, Error> {
		let decoded = u32::decode(stream)?;
		match decoded {
			0 => Ok(false),
			1 => Ok(true),
			_ => Err(Error::InvalidBool),
		}
	}

	fn encode(self, sink: &mut Sink) {
		sink.preamble_mut().extend_from_slice(&util::pad_u32(match self { true => 1, false => 0})[..]);
	}

}

impl AbiType for U256 {
	fn decode(stream: &mut Stream) -> Result<Self, Error> {
		let previous = stream.advance(32)?;

		Ok(
			U256::from_little_endian(&stream.payload()[previous..stream.position()])
		)
	}

	fn encode(self, sink: &mut Sink) {
		let tail = sink.preamble_mut().len();
		sink.preamble_mut().resize(tail + 32, 0);
		self.to_little_endian(&mut sink.preamble_mut()[tail..tail+32]);
	}

}

impl AbiType for Address {
	fn decode(stream: &mut Stream) -> Result<Self, Error> {
		let mut addr = Address::zero();
		stream.read_into(addr.as_mut())?;
		Ok(addr)
	}

	fn encode(self, sink: &mut Sink) {
		H256::from(self).encode(sink)
	}

}

impl AbiType for H256 {
	fn decode(stream: &mut Stream) -> Result<Self, Error> {
		let arr = <[u8; 32]>::decode(stream)?;
		Ok(arr.into())
	}

	fn encode(self, sink: &mut Sink) {
		self.as_fixed_bytes().encode(sink)
	}
}

impl<T: AbiType> AbiType for Vec<T> {
	fn decode(stream: &mut Stream) -> Result<Self, Error> {
		let len = u32::decode(stream)? as usize;
		let mut result = Vec::with_capacity(len);
		for _ in 0..len {
			result.push(stream.pop()?);
		}
		Ok(result)
	}

	fn encode(self, sink: &mut Sink) {
		sink.push(self.len() as u32);

		for member in self.into_iter() {
			sink.push(member);
		}
	}

}

// const IS_FIXED: bool = true;
impl AbiType for i32 {
	fn decode(stream: &mut Stream) -> Result<Self, Error> {

		let previous_position = stream.advance(32)?;

		let slice = &stream.payload()[previous_position..stream.position()];

		// only negative path here
		if !slice[0..28].iter().all(|x| *x == 0xff) {
			return Err(Error::InvalidPadding);
		}

		let result = ((slice[28] as u32) << 24) +
			((slice[29] as u32) << 16) +
			((slice[30] as u32) << 8) +
			(slice[31] as u32);

		Ok(result as i32)
	}

	fn encode(self, sink: &mut Sink) {
		sink.preamble_mut().extend_from_slice(&util::pad_i32(self)[..]);
	}

}


// const IS_FIXED: bool = true;
impl AbiType for i64 {
	fn decode(stream: &mut Stream) -> Result<Self, Error> {

		let previous_position = stream.advance(32)?;

		let slice = &stream.payload()[previous_position..stream.position()];

		// only negative path here
		if !slice[0..24].iter().all(|x| *x == 0xff) {
			return Err(Error::InvalidPadding);
		}

		let result =
			((slice[24] as u64) << 56) +
			((slice[25] as u64) << 48) +
			((slice[26] as u64) << 40) +
			((slice[27] as u64) << 32) +
			((slice[28] as u64) << 24) +
			((slice[29] as u64) << 16) +
			((slice[30] as u64) << 8) +
			 (slice[31] as u64);

		Ok(result as i64)
	}

	fn encode(self, sink: &mut Sink) {
		sink.preamble_mut().extend_from_slice(&util::pad_i64(self)[..]);
	}

}


// const IS_FIXED: bool = true;
macro_rules! abi_type_fixed_impl {
	($num: expr) => {
		impl AbiType for [u8; $num] {
			fn decode(stream: &mut Stream) -> Result<Self, Error> {
				let previous_position = stream.advance(32)?;
				let slice = &stream.payload()[previous_position..stream.position()];
				let mut result = [0u8; $num];
				result.copy_from_slice(&slice[0..$num]);
				Ok(result)
			}

			fn encode(self, sink: &mut Sink) {
				let mut padded = [0u8; 32];
				padded[0..$num].copy_from_slice(&self[..]);
				sink.preamble_mut().extend_from_slice(&padded[..]);
			}

		}
	}
}


// const IS_FIXED: bool = true;
macro_rules! tuple_impls {
	($(
		$Tuple:ident {
			$(($idx:tt) -> $T:ident)+
		}
	)+) => {
		$(
			impl<$($T:AbiType),+> AbiType for ($($T,)+) {
				fn decode(_stream: &mut Stream) -> Result<Self, Error> {
					panic!("Tuples allow only encoding, not decoding (for supporting multiple return types)")
				}

				fn encode(self, sink: &mut Sink) {
					$(sink.push(self.$idx);)+
				}


			}
		)+
	}
}

tuple_impls! {
	Tuple1 {
		(0) -> A
	}
	Tuple2 {
		(0) -> A
		(1) -> B
	}
	Tuple3 {
		(0) -> A
		(1) -> B
		(2) -> C
	}
	Tuple4 {
		(0) -> A
		(1) -> B
		(2) -> C
		(3) -> D
	}
	Tuple5 {
		(0) -> A
		(1) -> B
		(2) -> C
		(3) -> D
		(4) -> E
	}
	Tuple6 {
		(0) -> A
		(1) -> B
		(2) -> C
		(3) -> D
		(4) -> E
		(5) -> F
	}
	Tuple7 {
		(0) -> A
		(1) -> B
		(2) -> C
		(3) -> D
		(4) -> E
		(5) -> F
		(6) -> G
	}
	Tuple8 {
		(0) -> A
		(1) -> B
		(2) -> C
		(3) -> D
		(4) -> E
		(5) -> F
		(6) -> G
		(7) -> H
	}
	Tuple9 {
		(0) -> A
		(1) -> B
		(2) -> C
		(3) -> D
		(4) -> E
		(5) -> F
		(6) -> G
		(7) -> H
		(8) -> I
	}
	Tuple10 {
		(0) -> A
		(1) -> B
		(2) -> C
		(3) -> D
		(4) -> E
		(5) -> F
		(6) -> G
		(7) -> H
		(8) -> I
		(9) -> J
	}
	Tuple11 {
		(0) -> A
		(1) -> B
		(2) -> C
		(3) -> D
		(4) -> E
		(5) -> F
		(6) -> G
		(7) -> H
		(8) -> I
		(9) -> J
		(10) -> K
	}
	Tuple12 {
		(0) -> A
		(1) -> B
		(2) -> C
		(3) -> D
		(4) -> E
		(5) -> F
		(6) -> G
		(7) -> H
		(8) -> I
		(9) -> J
		(10) -> K
		(11) -> L
	}
}


abi_type_fixed_impl!(1);
abi_type_fixed_impl!(2);
abi_type_fixed_impl!(3);
abi_type_fixed_impl!(4);
abi_type_fixed_impl!(5);
abi_type_fixed_impl!(6);
abi_type_fixed_impl!(7);
abi_type_fixed_impl!(8);
abi_type_fixed_impl!(9);
abi_type_fixed_impl!(10);
abi_type_fixed_impl!(11);
abi_type_fixed_impl!(12);
abi_type_fixed_impl!(13);
abi_type_fixed_impl!(14);
abi_type_fixed_impl!(15);
abi_type_fixed_impl!(16);
abi_type_fixed_impl!(17);
abi_type_fixed_impl!(18);
abi_type_fixed_impl!(19);
abi_type_fixed_impl!(20);
abi_type_fixed_impl!(21);
abi_type_fixed_impl!(22);
abi_type_fixed_impl!(23);
abi_type_fixed_impl!(24);
abi_type_fixed_impl!(25);
abi_type_fixed_impl!(26);
abi_type_fixed_impl!(27);
abi_type_fixed_impl!(28);
abi_type_fixed_impl!(29);
abi_type_fixed_impl!(30);
abi_type_fixed_impl!(31);
abi_type_fixed_impl!(32);

#[cfg(test)]
mod tests {

	use super::super::{Stream, Sink};

	#[test]
	fn fixed_array_padding() {
		let data = &[
			1u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8,
			0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8
		];

		let mut stream = Stream::new(data);

		let val: [u8; 31] = stream.pop().expect("fixed array failed to deserialize");

		assert_eq!(val,
			[
				1u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8,
				0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8
			]
		);

		let mut sink = Sink::new(1);
		sink.push(val);

		assert_eq!(&sink.finalize_panicking()[..], &data[..]);
	}

	#[test]
	fn fixed_array_padding_2() {
		let data = &[
			1u8, 2u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8,
			0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8
		];

		let mut stream = Stream::new(data);

		let val: [u8; 2] = stream.pop().expect("fixed array failed to deserialize");

		assert_eq!(val, [1u8, 2u8]);

		let mut sink = Sink::new(1);
		sink.push(val);

		assert_eq!(&sink.finalize_panicking()[..], &data[..]);
	}
}
