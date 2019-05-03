use super::*;
use super::types::*;
use lib::*;

#[cfg(feature = "std")]
mod hextest {
	use super::super::*;
	use lib::*;

	#[test]
	fn bytes() {
		let encoded = hex!("
			0000000000000000000000000000000000000000000000000000000000000020
			0000000000000000000000000000000000000000000000000000000000000002
			1234000000000000000000000000000000000000000000000000000000000000
		");
		let mut stream = Stream::new(&encoded);

		let bytes: Vec<u8> = stream.pop().unwrap();

		assert_eq!(vec![0x12u8, 0x34], bytes);
	}

	#[test]
	fn two_bytes() {
		let encoded = hex!("
			0000000000000000000000000000000000000000000000000000000000000040
			0000000000000000000000000000000000000000000000000000000000000080
			000000000000000000000000000000000000000000000000000000000000001f
			1000000000000000000000000000000000000000000000000000000000000200
			0000000000000000000000000000000000000000000000000000000000000020
			0010000000000000000000000000000000000000000000000000000000000002
		");

		let mut stream = Stream::new(&encoded);

		let bytes1: Vec<u8> = stream.pop().unwrap();
		let bytes2: Vec<u8> = stream.pop().unwrap();

		assert_eq!(bytes1, hex!("10000000000000000000000000000000000000000000000000000000000002"));
		assert_eq!(bytes2, hex!("0010000000000000000000000000000000000000000000000000000000000002"));
	}

	#[test]
	fn bytes_encode() {
		assert_eq!(
			super::single_encode(vec![0x12u8, 0x34]),
			hex!("
				0000000000000000000000000000000000000000000000000000000000000020
				0000000000000000000000000000000000000000000000000000000000000002
				1234000000000000000000000000000000000000000000000000000000000000
			").to_vec()
		);
	}

}

#[cfg(feature = "std")]
macro_rules! assert_eq_core  { ($a:expr, $b:expr) => (assert_eq!($a, $b)) }

#[cfg(not(feature = "std"))]
macro_rules! assert_eq_core  { ($a:expr, $b:expr) => (assert!($a == $b, stringify!($a == $b))) }

#[test]
fn u8() {
	let payload: &[u8; 2] = &[
		0x45, 0x46
	];

	let mut stream = Stream::new(&payload[..]);

	let val: u8 = stream.pop::<u8>().unwrap();
	assert_eq!(val, 69);
	let val: u8 = stream.pop::<u8>().expect("argument decoding failed");
	assert_eq!(val, 70);

	let mut sink = Sink::new(1);
	sink.push(69_u8);
	sink.push(70_u8);
	assert_eq!(sink.preamble_mut(),&[0x45, 0x46]);
}

#[test]
fn u16() {
	let payload: &[u8; 4] = &[
		0x45, 0x00, 0x46, 0x00
	];

	let mut stream = Stream::new(&payload[..]);

	let val: u16 = stream.pop::<u16>().unwrap();
	assert_eq!(val, 69);
	let val: u16 = stream.pop::<u16>().expect("argument decoding failed");
	assert_eq!(val, 70);

	let mut sink = Sink::new(1);
	sink.push(69_u16);
	sink.push(70_u16);
	assert_eq!(sink.preamble_mut(),&[0x45, 0x00, 0x46, 0x00]);
}


#[test]
fn u32() {
	let payload: &[u8; 8] = &[
		0x45, 0x00, 0x00, 0x00, 0x46, 0x00, 0x00, 0x00
	];

	let mut stream = Stream::new(&payload[..]);

	let val: u32 = stream.pop::<u32>().unwrap();
	assert_eq!(val, 69);
	let val: u32 = stream.pop::<u32>().expect("argument decoding failed");
	assert_eq!(val, 70);

	let mut sink = Sink::new(1);
	sink.push(69_u32);
	sink.push(70_u32);
	assert_eq!(sink.preamble_mut(),&[0x45, 0x00, 0x00, 0x00, 0x46, 0x00, 0x00, 0x00]);
}

#[test]
fn u64() {
	let payload: &[u8; 16] = &[
		0x45, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x46, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	];

	let mut stream = Stream::new(&payload[..]);

	let val: u64 = stream.pop::<u64>().unwrap();
	assert_eq!(val, 69);
	let val: u64 = stream.pop::<u64>().expect("argument decoding failed");
	assert_eq!(val, 70);

	let mut sink = Sink::new(1);
	sink.push(69_u64);
	sink.push(70_u64);
	assert_eq!(sink.preamble_mut(),&[0x45, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x46, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00]);
}

#[test]
fn u256() {
	let payload: &[u8; 36] = &[
		0x45, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x03, 0x61,0x64,0x64
	];

	let mut stream = Stream::new(&payload[..]);

	let val: U256 = stream.pop::<U256>().unwrap();
	assert_eq!(val, U256::from(69));
	let val: String = stream.pop::<String>().unwrap();
	assert_eq!(val, "add".to_string());

	let mut sink = Sink::new(2);
	sink.push(U256::from(69));
	sink.push("add".to_string());
	let sample: &[u8] = &[0x45, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x03, 0x61,0x64,0x64];
	let payload = sink.finalize_panicking();
	assert_eq!(&payload[..],sample);
}

#[test]
fn h256() {
	let payload: &[u8; 36] = &[
		0x45, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x03, 0x61,0x64,0x64
	];

	let mut stream = Stream::new(&payload[..]);

	let mut val = stream.pop::<H256>().unwrap();
	assert_eq!(val.as_mut(), &[0x45, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	]);
	let val: String = stream.pop::<String>().unwrap();
	assert_eq!(val, "add".to_string());
}

#[test]
fn boo() {
	let payload: &[u8; 2] = &[
		0x0, 0x1
	];

	let mut stream = Stream::new(&payload[..]);

	let val: bool = stream.pop::<bool>().unwrap();
	assert_eq!(val, false);
	let val: bool = stream.pop::<bool>().expect("argument decoding failed");
	assert_eq!(val, true);
}

#[test]
fn string() {
	let payload: &[u8; 4] = &[
		0x03, 0x61,0x64,0x64
	];

	let mut stream = Stream::new(&payload[..]);

	let str_val: String = stream.pop::<String>().unwrap();

	assert_eq!(str_val, "add".to_string());

	let mut sink = Sink::new(1);
	sink.push("add".to_string());
	sink.push("add".to_string());
	let sample: &[u8] = &[
		0x03, 0x61,0x64,0x64,
		0x03, 0x61,0x64,0x64];
	let payload = sink.finalize_panicking();
	assert_eq!(&payload[..],sample);
}

#[test]
fn params() {
	let payload: &[u8; 12] = &[
		0x03, 0x61, 0x64, 0x64,
		0x45, 0x00, 0x00, 0x00,
		0x45, 0x00, 0x00, 0x00
	];

	let mut stream = Stream::new(&payload[..]);

	let str_val: String = stream.pop::<String>().unwrap();
	assert_eq!(str_val, "add".to_string());
	let val: u32 = stream.pop::<u32>().unwrap();
	assert_eq!(val, 69);
	let val: u32 = stream.pop::<u32>().expect("argument decoding failed");
	assert_eq!(val, 69);
}

#[test]
fn addr() {
	let payload: &[u8; 24] = &[
		0x03, 0x61, 0x64, 0x64,
		0x45, 0x00, 0x00, 0x00,
		0x45, 0x00, 0x00, 0x00,
		0x45, 0x00, 0x00, 0x00,
		0x45, 0x00, 0x00, 0x00,
		0x03, 0x61, 0x64, 0x64
	];

	let mut stream = Stream::new(&payload[..]);

	// stream.pop::<Address>().unwrap();
	let mut addr = stream.pop::<Address>().unwrap();
	assert_eq!(addr.as_mut(), &[0x03, 0x61, 0x64, 0x64,0x45, 0x00, 0x00, 0x00,0x45, 0x00, 0x00, 0x00,0x45, 0x00, 0x00, 0x00,0x45, 0x00, 0x00, 0x00,]);
	let val: String = stream.pop::<String>().unwrap();
	assert_eq!(val, "add".to_string());
}

fn single_decode<T: super::AbiType>(payload: &[u8]) -> (T) {
	let mut stream = super::Stream::new(payload);
	stream.pop().expect("argument type 1 should be decoded")
}

fn double_decode<T1: super::AbiType, T2: super::AbiType>(payload: &[u8]) -> (T1, T2) {
	let mut stream = super::Stream::new(payload);
	(
		stream.pop().expect("argument type 1 should be decoded"),
		stream.pop().expect("argument type 2 should be decoded"),
	)
}

fn triple_decode<T1: super::AbiType, T2: super::AbiType, T3: super::AbiType>(payload: &[u8]) -> (T1, T2, T3) {
	let mut stream = super::Stream::new(payload);
	(
		stream.pop().expect("argument type 1 should be decoded"),
		stream.pop().expect("argument type 2 should be decoded"),
		stream.pop().expect("argument type 3 should be decoded"),
	)
}

fn single_encode<T: super::AbiType>(val: T) -> Vec<u8> {
	let mut sink = super::Sink::new(1);
	sink.push(val);
	sink.finalize_panicking()
}

#[test]
fn u32_encode() {
	assert_eq_core!(
		single_encode(69),
		vec![
			0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
			0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x45
		]
	);
}

#[test]
fn sample1_decode() {
	let payload: &[u8] = &[
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x45,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
	];

	let (v1, v2) = double_decode::<u32, bool>(&payload);

	assert_eq!(v1, 69);
	assert_eq!(v2, true);
}

#[test]
fn fixed_size_decode() {
	let payload: &[u8] = &[
		0x45, 0x01, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00,
	];
	let array = single_decode::<[u8; 30]>(payload);
	assert_eq!(array, [
		0x45, 0x01, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08,
	]);
}

#[test]
fn sample1_encode() {
	let sample: &[u8] = &[
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x45,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
	];

	let mut sink = Sink::new(2);
	sink.push(69u32);
	sink.push(true);

	assert_eq!(&sink.finalize_panicking()[..], &sample[..]);
}

#[test]
fn sample2_decode() {
	let sample: &[u8] = &[
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x60,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xa0,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04,
		0x64, 0x61, 0x76, 0x65, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
	];

	let (v1, v2, v3) = triple_decode::<Vec<u8>, bool, Vec<U256>>(&sample);

	assert_eq_core!(v1, vec![100, 97, 118, 101]);
	assert_eq!(v2, true);
	assert_eq_core!(v3, vec![U256::from(1), U256::from(2), U256::from(3)]);
}

#[test]
fn negative_i32() {
	let x: i32 = -1;
	let mut sink = ::bxa::Sink::new(1);
	sink.push(x);
	let payload = sink.finalize_panicking();

	assert_eq!(
		&payload[..],
		&[0xff; 32]
	);

	let mut stream = ::bxa::Stream::new(&payload[..]);
	let value: i32 = stream.pop().expect("x failed to pop");
	assert_eq!(value, x);
}

#[test]
fn negative_i32_max() {
	let x: i32 = i32::min_value();
	let mut sink = ::bxa::Sink::new(1);
	sink.push(x);
	let payload = sink.finalize_panicking();

	assert_eq!(
		&payload[..],
		&[
			0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
		  	0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x80, 0x00, 0x00, 0x00
		]
	);

	let mut stream = ::bxa::Stream::new(&payload[..]);
	let value: i32 = stream.pop().expect("x failed to pop");
	assert_eq!(value, x);
}

#[test]
fn padding_test_i32() {
	let mut sample = [0xff; 32];
	sample[0] = 0x80;
	let mut stream = ::bxa::Stream::new(&sample);
	assert_eq!(stream.pop::<i32>().unwrap_err(), Error::InvalidPadding);
}

#[test]
fn padding_test_i64() {
	let mut sample = [0xff; 32];
	sample[0] = 0x80;
	let mut stream = ::bxa::Stream::new(&sample);
	assert_eq!(stream.pop::<i64>().unwrap_err(), Error::InvalidPadding);
}


#[test]
fn string_encode_decode() {
	let test_string = String::from("Parity Röcks!");

	let mut sink = Sink::new(1);
	sink.push(test_string.clone());
	let payload = sink.finalize_panicking();

	// The binary data is the "preamble", followed by the nested variable size data, starting with the
	// length of the string (in bytes) as uint256 followed by the UTF-8 encoded string, padded to 32 bytes.
	let sample: &[u8] = &[
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0e,
		0x50, 0x61, 0x72, 0x69, 0x74, 0x79, 0x20, 0x52,	0xc3, 0xb6, 0x63, 0x6b, 0x73, 0x21, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	];

	assert_eq!(
		&payload[..],
		sample
	);

	let mut stream = ::bxa::Stream::new(&payload[..]);
	let output: String = stream.pop().expect("Test string failed to pop");
	assert_eq!(test_string, output);
}
