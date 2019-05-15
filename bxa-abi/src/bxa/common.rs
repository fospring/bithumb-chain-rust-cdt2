//! Common types encoding/decoding

use lib::*;
use super::{util, Stream, AbiType, Encoder, ToBXAString, Sink, Error, DbSerializer};
use super::types::{Address, H256, U256};
use bxa_std::str::from_utf8;
use base58::ToBase58;

impl AbiType for u8 {
	fn decode(stream: &mut Stream) -> Result<Self, Error> {
		stream.read_byte()
	}

	fn encode(self, sink: &mut Sink) {
		sink.write_byte(self);
	}

	fn push_type(self, sink: &mut Sink) {sink.write_byte(2_u8);}
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

	fn push_type(self, sink: &mut Sink) {sink.write_byte(255_u8);}
}

impl AbiType for i32 {
	fn decode(stream: &mut Stream) -> Result<Self, Error> {

		let previous_position = stream.advance(4)?;

		let slice = &stream.payload()[previous_position..stream.position()];

		let result = (slice[0] as u32) +
			((slice[1] as u32) << 8) +
			((slice[2] as u32) << 16) +
			((slice[3] as u32) << 24);

		Ok(result as i32)
	}

	fn encode(self, sink: &mut Sink) {
		sink.preamble_mut().extend_from_slice(&util::pad_i32(self)[..]);
	}

	fn push_type(self, sink: &mut Sink) {sink.write_byte(4_u8);}
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

	fn push_type(self, sink: &mut Sink) {sink.write_byte(5_u8);}
}

impl DbSerializer for u32 {
	fn decode_db(stream: &mut Stream) -> Result<Self, Error> {
		// error handle
		let n =  u64::decode_db(stream)?;
		let res = n as u32;
		Ok(res)
	}

	fn encode_db(self, sink: &mut Sink) {
		let n = self as u64;
		n.encode_db(sink);
	}
}

impl AbiType for i64 {
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

		Ok(result as i64)
	}

	fn encode(self, sink: &mut Sink) {
		sink.preamble_mut().extend_from_slice(&util::pad_i64(self)[..]);
	}

	fn push_type(self, sink: &mut Sink) {sink.write_byte(6_u8);}
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

	fn push_type(self, sink: &mut Sink) {sink.write_byte(7_u8);}
}

impl DbSerializer for u64 {
	fn decode_db(stream: &mut Stream) -> Result<Self, Error> {
		let mut d:[u8;1] = [0;1];
		stream.read_into(d.as_mut())?;
		let p = d[0] as u64;
		if p <= 0x80 {
			return Ok(p)
		}
		let result: u64;
		match p - 0x80 {
			1 => {
				d = [0;1];
				stream.read_into(d.as_mut())?;
				result = d[0] as u64;
			},
			2 => {
				let mut d = [0;2];
				stream.read_into(d.as_mut())?;
				result =
					((d[1] as u16) | (d[0] as u16) << 8) as u64;
			},
			3 => {
				let mut d = [0;3];
				stream.read_into(d.as_mut())?;
				result =
					((d[2] as u32) | (d[1] as u32) << 8 | (d[0] as u32) << 16) as u64;
			},
			4 => {
				let mut d = [0;4];
				stream.read_into(d.as_mut())?;
				result =
					((d[3] as u32) | (d[2] as u32) << 8 | (d[1] as u32) << 16 | (d[0] as u32) << 24) as u64;
			},
			5 => {
				let mut d = [0;5];
				stream.read_into(d.as_mut())?;
				result =
					((d[4] as u64) | (d[3] as u64) << 8 | (d[2] as u64) << 16 | (d[1] as u64) << 24 | (d[0] as u64) << 32) as u64;
			},
			6 => {
				let mut d = [0;6];
				stream.read_into(d.as_mut())?;
				result =
					((d[5] as u64) | (d[4] as u64) << 8 | (d[3] as u64) << 16 | (d[2] as u64) << 24 | (d[1] as u64) << 32 | (d[0] as u64) << 40) as u64;
			},
			7 => {
				let mut d = [0;7];
				stream.read_into(d.as_mut())?;
				result =
					((d[6] as u64) | (d[5] as u64) << 8 | (d[4] as u64) << 16 | (d[3] as u64) << 24 | (d[2] as u64) << 32 | (d[1] as u64) << 40 | (d[0] as u64) << 48) as u64;
			},
			8 => {
				let mut d = [0;8];
				stream.read_into(d.as_mut())?;
				result =
					((d[7] as u64) | (d[6] as u64) << 8 | (d[5] as u64) << 16 | (d[4] as u64) << 24 | (d[3] as u64) << 32 | (d[2] as u64) << 40 | (d[1] as u64) << 48 | (d[0] as u64) << 56) as u64;
			},
			_ => return Err(Error::InvalidU64),
		}
		Ok(result)
	}

	fn encode_db(self, sink: &mut Sink) {
		let mut data :[u8;9] = [0;9];
		let size:usize;
		match self {
			num if num < 0x80 => {
				data[0] = num as u8;
				size = 1;
			},
			num if num < (1<<8) => {
				data[0] = 0x80 + 1;
				data[1] = num as u8;
				size = 2;
			},
			num if num < (1<<16) => {
				data[0] = 0x80 + 2;
				data[1] = (num >> 8) as u8;
				data[2] = num as u8;
				size = 3;
			},
			num if num < (1<<24) => {
				data[0] = 0x80 + 3;
				data[1] = (num >> 16) as u8;
				data[2] = (num >> 8) as u8;
				data[3] = num as u8;
				size = 4;
			},
			num if num < (1<<32) => {
				data[0] = 0x80 + 4;
				data[1] = (num >> 24) as u8;
				data[2] = (num >> 16) as u8;
				data[3] = (num >> 8) as u8;
				data[4] = num as u8;
				size = 5;
			},
			num if num < (1<<40) => {
				data[0] = 0x80 + 5;
				data[1] = (num >> 32) as u8;
				data[2] = (num >> 24) as u8;
				data[3] = (num >> 16) as u8;
				data[4] = (num >> 8) as u8;
				data[5] = num as u8;
				size = 6;
			},
			num if num < (1<<48) => {
				data[0] = 0x80 + 6;
				data[1] = (num >> 40) as u8;
				data[2] = (num >> 32) as u8;
				data[3] = (num >> 24) as u8;
				data[4] = (num >> 16) as u8;
				data[5] = (num >> 8) as u8;
				data[6] = num as u8;
				size = 7;
			},
			num if num < (1<<56) => {
				data[0] = 0x80 + 7;
				data[1] = (num >> 48) as u8;
				data[2] = (num >> 40) as u8;
				data[3] = (num >> 32) as u8;
				data[4] = (num >> 24) as u8;
				data[5] = (num >> 16) as u8;
				data[6] = (num >> 8) as u8;
				data[7] = num as u8;
				size = 8;
			},
			num => {
				data[0] = 0x80 + 8;
				data[1] = (num >> 56) as u8;
				data[2] = (num >> 48) as u8;
				data[3] = (num >> 40) as u8;
				data[4] = (num >> 32) as u8;
				data[5] = (num >> 24) as u8;
				data[6] = (num >> 16) as u8;
				data[7] = (num >> 8) as u8;
				data[8] = num as u8;
				size = 9;
			},
		}
		sink.preamble_mut().extend_from_slice(&data[..size]);
	}
}

impl Encoder for &str {
	fn encode(&self, sink: &mut Sink) {
		sink.write_len(self.len() as u32);
		sink.write_bytes(self.as_bytes());
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
		self.as_str().encode(sink);
	}

	fn push_type(self, sink: &mut Sink) {sink.write_byte(8_u8);}
}

impl DbSerializer for String {
	fn decode_db(stream: &mut Stream) -> Result<Self, Error> {
		let n =  u32::decode_db(stream)?;
		if n == 0 {
			return Ok("".to_string())
		}
		if n >= 1 << 32 -1 {
			return Err(Error::DataSizeOutOfRange)
		} else {
			let len = n as usize;
			let result = from_utf8(&stream.payload()[stream.position()..stream.position() + len])
				.map_err(|_err| Error::Other)?
				.to_string();
			stream.advance(len)?;
			return Ok(result)
		}
	}

	fn encode_db(self, sink: &mut Sink) {
		let size = (self.as_str().len()) as u64;
		size.encode_db(sink);
		sink.write_bytes(self.as_str().as_bytes());
	}
}

impl AbiType for bool {
	fn decode(stream: &mut Stream) -> Result<Self, Error> {
		let decoded = u8::decode(stream)?;
		match decoded {
			0 => Ok(false),
			1 => Ok(true),
			_ => Err(Error::InvalidBool),
		}
	}

	fn encode(self, sink: &mut Sink) {
		sink.preamble_mut().extend_from_slice(&util::pad_u8(match self { true => 1, false => 0})[..]);
	}

	fn push_type(self, sink: &mut Sink) {sink.write_byte(9_u8);}
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

	fn push_type(self, sink: &mut Sink) {sink.write_byte(15_u8);}
}

impl AbiType for Address {
	fn decode(stream: &mut Stream) -> Result<Self, Error> {
		let mut addr = Address::zero();
		stream.read_into(addr.as_mut())?;
		Ok(addr)
	}

	fn encode(self, sink: &mut Sink) {
		sink.write_bytes(self.as_ref())
	}

	fn push_type(self, sink: &mut Sink) {sink.write_byte(11_u8);}
}

impl AbiType for H256 {
	fn decode(stream: &mut Stream) -> Result<Self, Error> {
		let mut hash = H256::zero();
		stream.read_into(hash.as_mut())?;
		Ok(hash)
	}

	fn encode(self, sink: &mut Sink) {
		self.as_fixed_bytes().encode(sink)
	}

	fn push_type(self, sink: &mut Sink) {sink.write_byte(12_u8);}
}

impl<T: AbiType> AbiType for Vec<T> {
	fn decode(stream: &mut Stream) -> Result<Self, Error> {
		let len = stream.read_len()?;
		let mut result = Vec::with_capacity(cmp::min(len, 1024) as usize);
		for _ in 0..len {
			result.push(stream.pop::<T>()?);
		}
		Ok(result)
	}

	fn encode(self, sink: &mut Sink) {
		sink.write_len(self.len() as u32);
		for member in self.into_iter() {
			sink.push(member);
		}
	}

	fn push_type(self, sink: &mut Sink) {sink.write_byte(13_u8);}
}

impl ToBXAString for Address {
	fn to_bxa_string(&self) -> String {
		let mut bytes:[u8;20] = [0;20];
		self.copy_to(&mut bytes);
		bytes.to_base58()
	}
}

impl ToBXAString for u64 {
	fn to_bxa_string(&self) -> String {
		self.to_string()
	}
}

impl ToBXAString for String {
	fn to_bxa_string(&self) -> String {
		self.to_string()
	}
}

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

			fn push_type(self, sink: &mut Sink) {sink.write_byte(13_u8);}
		}
	}
}

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

				fn push_type(self, sink: &mut Sink) {sink.write_byte(254_u8);}
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
