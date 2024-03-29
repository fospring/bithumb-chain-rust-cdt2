//! Common types encoding/decoding
use lib::*;
use super::{util, Stream, AbiType, Sink, Zero, Error};
use super::types::{AddressAccount, MAX_VDNS_NAME_LENGTH, Address, H256, U256, Account};
use bxa_std::str::from_utf8;
use bxa_std::base58;

type DataType = u8;

const TYPE_NIL: DataType = 0x00;
const TYPE_INT8: DataType = 0x01;
const TYPE_UINT8: DataType = 0x02;
const TYPE_INT32: DataType = 0x03;
const TYPE_UINT32: DataType = 0x04;
const TYPE_INT64: DataType = 0x05;
const TYPE_UINT64: DataType = 0x06;
const TYPE_STRING: DataType = 0x07;
const TYPE_BOOL: DataType = 0x08;
const TYPE_BYTES: DataType = 0x09;
const TYPE_ADDRESS: DataType = 0x0A;
const TYPE_ACCOUNT: DataType = 0x0A;
const TYPE_UINT256: DataType = 0x0B;
pub const TYPE_ARRAY: DataType = 0x0C;
pub const TYPE_STRUCT: DataType = 0x0D;
const OTHER_TYPE: DataType = 0xff;

impl AbiType for u8 {
    fn decode(stream: &mut Stream) -> Result<Self, Error> {
        let ty = stream.read_byte().unwrap();
        assert_eq!(TYPE_UINT8, ty);
        let n = stream.read_u64()?;
        let res = n as u8;
        Ok(res)
    }
    fn encode(self, sink: &mut Sink) {
        sink.write_byte(TYPE_UINT8);

        let mut size: usize = 0;
        let data: [u8; 9] = util::pad_u64(self as u64, &mut size);
        sink.preamble_mut().extend_from_slice(&data[..size]);
    }
    fn get_type() -> u8 { TYPE_UINT8 }
    fn to_bxa_string(&self) -> String {
        self.to_string()
    }
}

impl Zero for u8 {
    fn zero() -> Self {
        0_u8
    }
}

impl AbiType for i32 {
    fn decode(stream: &mut Stream) -> Result<Self, Error> {
        let ty = stream.read_byte().unwrap();
        assert_eq!(TYPE_INT32, ty);
        let n = stream.read_u64()?;
        let res = n as i32;
        Ok(res)
    }
    fn encode(self, sink: &mut Sink) {
        sink.write_byte(TYPE_INT32);
        let mut size: usize = 0;
        let data: [u8; 9] = util::pad_u64(self as u64, &mut size);
        sink.preamble_mut().extend_from_slice(&data[..size]);
    }
    fn get_type() -> u8 { TYPE_INT32 }
    fn to_bxa_string(&self) -> String {
        self.to_string()
    }
}

impl Zero for i32 {
    fn zero() -> Self {
        0_i32
    }
}

impl AbiType for u32 {
    fn decode(stream: &mut Stream) -> Result<Self, Error> {
        let ty = stream.read_byte().unwrap();
        assert_eq!(TYPE_UINT32, ty);
        let n = stream.read_u64()?;
        let res = n as u32;
        Ok(res)
    }
    fn encode(self, sink: &mut Sink) {
        sink.write_byte(TYPE_UINT32);
        let mut size: usize = 0;
        let data: [u8; 9] = util::pad_u64(self as u64, &mut size);
        sink.preamble_mut().extend_from_slice(&data[..size]);
    }
    fn get_type() -> u8 { TYPE_UINT32 }
    fn to_bxa_string(&self) -> String {
        self.to_string()
    }
}

impl Zero for u32 {
    fn zero() -> Self {
        0_u32
    }
}

impl AbiType for i64 {
    fn decode(stream: &mut Stream) -> Result<Self, Error> {
        let ty = stream.read_byte().unwrap();
        assert_eq!(TYPE_INT64, ty);
        let n = stream.read_u64()?;
        let res = n as i64;
        Ok(res)
    }
    fn encode(self, sink: &mut Sink) {
        sink.write_byte(TYPE_INT64);
        let mut size: usize = 0;
        let data: [u8; 9] = util::pad_u64(self as u64, &mut size);
        sink.preamble_mut().extend_from_slice(&data[..size]);
    }
    fn get_type() -> u8 { TYPE_INT64 }
    fn to_bxa_string(&self) -> String {
        self.to_string()
    }
}

impl Zero for i64 {
    fn zero() -> Self {
        0_i64
    }
}

impl AbiType for u64 {
    fn decode(stream: &mut Stream) -> Result<Self, Error> {
        let ty = stream.read_byte().unwrap();
        assert_eq!(TYPE_UINT64, ty);
        stream.read_u64()
    }
    fn encode(self, sink: &mut Sink) {
        sink.write_byte(TYPE_UINT64);
        let mut size: usize = 0;
        let data: [u8; 9] = util::pad_u64(self, &mut size);
        sink.preamble_mut().extend_from_slice(&data[..size]);
    }
    fn get_type() -> u8 { TYPE_UINT64 }
    fn to_bxa_string(&self) -> String {
        self.to_string()
    }
}


impl Zero for u64 {
    fn zero() -> Self {
        0_u64
    }
}

impl AbiType for String {
    fn decode(stream: &mut Stream) -> Result<Self, Error> {
        let ty = stream.read_byte().unwrap();
        assert_eq!(TYPE_STRING, ty);
        let res = stream.read_u64()?;
        let n = res as u32;
        if n == 0 {
            return Ok("".to_string());
        }
        if n >= 1 << 32 - 1 {
            return Err(Error::DataSizeOutOfRange);
        } else {
            let len = n as usize;
            let result = from_utf8(&stream.payload()[stream.position()..stream.position() + len])
                .map_err(|_err| Error::Other)?
                .to_string();
            stream.advance(len)?;
            return Ok(result);
        }
    }
    fn encode(self, sink: &mut Sink) {
        sink.write_byte(TYPE_STRING);

        let mut size: usize = 0;
        let data: [u8; 9] = util::pad_u64((self.as_str().len()) as u64, &mut size);
        sink.preamble_mut().extend_from_slice(&data[..size]);
        sink.write_bytes(self.as_str().as_bytes());
    }
    fn get_type() -> u8 { TYPE_STRING }
    fn to_bxa_string(&self) -> String {
        self.to_string()
    }
}

impl Zero for String {
    fn zero() -> Self {
        String::from("")
    }
}

impl AbiType for bool {
    fn decode(stream: &mut Stream) -> Result<Self, Error> {
        let ty = stream.read_byte().unwrap();
        assert_eq!(TYPE_BOOL, ty);
        let n = stream.read_u64()?;
        let res = n as u8;
        match res {
            0 => Ok(false),
            1 => Ok(true),
            _ => Err(Error::InvalidBool),
        }
    }

    fn encode(self, sink: &mut Sink) {
        sink.write_byte(TYPE_BOOL);
        sink.preamble_mut().extend_from_slice(match self {
            true => &[1_u8; 1],
            false => &[0_u8; 1]
        });
    }
    fn get_type() -> u8 { TYPE_BOOL }
    fn to_bxa_string(&self) -> String {
        self.to_string()
    }
}

impl Zero for bool {
    fn zero() -> Self {
        false
    }
}

impl AbiType for U256 {
    fn decode(stream: &mut Stream) -> Result<Self, Error> {
        let ty = stream.read_byte().unwrap();
        assert_eq!(TYPE_UINT256, ty);
        let previous = stream.advance(32)?;
        Ok(
            U256::from_little_endian(&stream.payload()[previous..stream.position()])
        )
    }

    fn encode(self, sink: &mut Sink) {
        sink.write_byte(TYPE_UINT256);
        let tail = sink.preamble_mut().len();
        sink.preamble_mut().resize(tail + 32, 0);
        self.to_little_endian(&mut sink.preamble_mut()[tail..tail + 32]);
    }
    fn get_type() -> u8 { TYPE_UINT256 }
    fn to_bxa_string(&self) -> String {
        self.to_string()
    }
}

impl Zero for U256 {
    fn zero() -> Self {
        U256::from(0)
    }
}

impl AbiType for Address {
    fn decode(stream: &mut Stream) -> Result<Self, Error> {
        let ty = stream.read_byte().unwrap();
        assert_eq!(TYPE_ADDRESS, ty);
        let mut addr = Address::zero();
        stream.read_into(addr.as_mut())?;
        Ok(addr)
    }

    fn encode(self, sink: &mut Sink) {
        sink.write_byte(TYPE_ADDRESS);
        sink.write_bytes(self.as_ref())
    }
    fn get_type() -> u8 { TYPE_ADDRESS }
    fn to_bxa_string(&self) -> String {
        let mut bytes: [u8; 20] = [0; 20];
        self.copy_to(&mut bytes);
        base58::to_base58(&bytes)
    }
}

impl Zero for Address {
    fn zero() -> Self {
        let bytes: [u8; 20] = [0_u8; 20];
        Address::new(bytes)
    }
}

impl AbiType for Account {
    fn decode(stream: &mut Stream) -> Result<Self, Error> {
        let mut ty = stream.read_byte().unwrap();
        assert_eq!(TYPE_ACCOUNT, ty);
        let mut account = Account::new();
        ty = stream.read_byte().unwrap();
        if ty == AddressAccount {
            stream.read_into(account.address.as_mut())?;
        } else {
            let res = stream.read_u64()?;
            let n = res as u32;
            if n == 0 || n > MAX_VDNS_NAME_LENGTH as u32 {
                account.vdns_name = String::from("");
            } else {
                let len = n as usize;
                account.vdns_name = from_utf8(&stream.payload()[stream.position()..stream.position() + len])
                    .map_err(|_err| Error::Other)?
                    .to_string();
                stream.advance(len)?;
            }
        }
        Ok(account)
    }

    fn encode(self, sink: &mut Sink) {
        sink.write_byte(TYPE_ACCOUNT);
        sink.write_byte(self.a_type);
        if self.a_type == AddressAccount {
            sink.write_bytes(self.address.as_ref())
        } else {
            let mut size: usize = 0;
            let data: [u8; 9] = util::pad_u64((self.vdns_name.as_str().len()) as u64, &mut size);
            sink.preamble_mut().extend_from_slice(&data[..size]);
            sink.write_bytes(self.vdns_name.as_str().as_bytes());
        }
    }
    fn get_type() -> u8 { TYPE_ACCOUNT }
    fn to_bxa_string(&self) -> String {
        self.to_string()
    }
}


impl AbiType for H256 {
    fn decode(stream: &mut Stream) -> Result<Self, Error> {
        let ty = stream.read_byte().unwrap();
        assert_eq!(TYPE_UINT256, ty);
        let mut hash = H256::zero();
        stream.read_into(hash.as_mut())?;
        Ok(hash)
    }
    fn encode(self, sink: &mut Sink) {
        sink.write_byte(TYPE_UINT256);
        self.as_fixed_bytes().encode(sink)
    }
    fn get_type() -> u8 { TYPE_UINT256 }
    fn to_bxa_string(&self) -> String {
        self.to_string()
    }
}

impl Zero for H256 {
    fn zero() -> Self {
        let bytes: [u8; 32] = [0_u8; 32];
        H256::new(bytes)
    }
}

impl<T: AbiType> AbiType for Vec<T> {
    fn decode(stream: &mut Stream) -> Result<Self, Error> {
        let ty = stream.read_byte().unwrap();
        assert_eq!(TYPE_ARRAY, ty);
        let len = stream.read_u64()?;
        let len = len as u32;
        let mut result = Vec::with_capacity(cmp::min(len, 1024) as usize);
        for _ in 0..len {
            result.push(stream.pop::<T>()?);
        }
        Ok(result)
    }

    fn encode(self, sink: &mut Sink) {
        // todo if T::get_type == TYPE_UINT8
        sink.write_byte(TYPE_ARRAY);
        let size = self.len() as u64;

        let mut len: usize = 0;
        let data: [u8; 9] = util::pad_u64(size, &mut len);
        sink.preamble_mut().extend_from_slice(&data[..len]);

        for member in self.into_iter() {
            sink.push(member);
        }
    }
    fn get_type() -> u8 { TYPE_ARRAY }
    fn to_bxa_string(&self) -> String {
        let mut res = String::from("");
        res.push('[');
        for v in self {
            res.push_str(&v.to_bxa_string());
            res.push(',')
        }
        res.pop();
        res.push(']');
        res
    }
}

impl<T: AbiType> Zero for Vec<T> {
    fn zero() -> Self {
        let v: Vec<T> = Vec::new();
        v
    }
}

#[macro_export]
macro_rules! abi_extends {
	    ($(#[derive($($mt:meta),*)])* $vi:vis struct $name:ident { $($v:vis $fname:ident : $ftype:ty),* $(,)*}) => {
        #[abi_struct]
		$(#[derive($($mt),*)])*
        $vi struct $name {
            $($v $fname : $ftype),*
        }

        impl AbiType for $name {
			fn decode(stream: &mut Stream) -> Result<Self, Error> {
				let ty = stream.read_byte().unwrap();
				assert_eq!(TYPE_STRUCT,ty);
				let _size = stream.read_u64()?;

				let mut st = $name{$($fname: <$ftype>::zero()),*};
				$(st.$fname = <$ftype>::decode(stream)?);*;
				Ok(st)
			}
			fn encode(self, sink: &mut Sink) {
				sink.write_byte(TYPE_STRUCT);
				static NAMES: &'static [&'static str] = &[$(stringify!($fname)),*];
				let size:u64 = NAMES.len() as u64;
				let mut len:usize = 0;
				let data: [u8;9] = pad_u64(size, &mut len);
				sink.preamble_mut().extend_from_slice(&data[..len]);

				$(&self.$fname.encode(sink));*;
			}
    		fn get_type() -> u8 { TYPE_STRUCT }
            fn to_bxa_string(&self) -> String {
                let mut s = String::from("");
                s.push('{');
                $(
                	s.push_str(stringify!($fname));
                	s.push(':');
                    s.push_str(&self.$fname.to_bxa_string());
                    s.push(',');
                );*;
                s.pop();
                s.push('}');
                s
            }
        }
    }
}

macro_rules! abi_type_fixed_impl {
	($num: expr) => {
		impl AbiType for [u8; $num] {
			fn decode(stream: &mut Stream) -> Result<Self, Error> {
				let ty = stream.read_byte().unwrap();
				assert_eq!(OTHER_TYPE,ty);
				let previous_position = stream.advance(32)?;
				let slice = &stream.payload()[previous_position..stream.position()];
				let mut result = [0u8; $num];
				result.copy_from_slice(&slice[0..$num]);
				Ok(result)
			}

			fn encode(self, sink: &mut Sink) {
				sink.write_byte(OTHER_TYPE);
				let mut padded = [0u8; 32];
				padded[0..$num].copy_from_slice(&self[..]);
				sink.preamble_mut().extend_from_slice(&padded[..]);
			}
			fn get_type() -> u8 {OTHER_TYPE}
			fn to_bxa_string(&self) -> String {
				String::from("")
			}
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
				fn decode(stream: &mut Stream) -> Result<Self, Error> {
					let ty = stream.read_byte().unwrap();
					assert_eq!(TYPE_STRUCT,ty);
					let _size = stream.read_u64()?;
					Ok(($(<$T>::decode(stream)?),*,))
				}

				fn encode(self, sink: &mut Sink) {
					sink.write_byte(TYPE_STRUCT);

					static NAMES: &'static [&'static str] = &[$(stringify!($idx)),*];
					let size:u64 = NAMES.len() as u64;
					let mut len:usize = 0;
					let data: [u8;9] = util::pad_u64(size, &mut len);
					sink.preamble_mut().extend_from_slice(&data[..len]);

					$(&self.$idx.encode(sink));*;
				}
				fn get_type() -> u8 {TYPE_STRUCT}

				fn to_bxa_string(&self) -> String {
					String::from("")
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
            255u8, 1u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8,
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
            255u8, 1u8, 2u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8,
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
