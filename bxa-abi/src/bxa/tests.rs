use super::*;
use super::types::*;
use lib::*;

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
fn i32() {
	let payload: &[u8; 8] = &[
		0x09, 0x00, 0x00, 0x00, 0xf9, 0xff, 0xff, 0xff
	];

	let mut stream = Stream::new(&payload[..]);

	let val: i32 = stream.pop::<i32>().unwrap();
	assert_eq!(val, 9_i32);
	let val: i32 = stream.pop::<i32>().expect("argument decoding failed");
	assert_eq!(val, -7_i32);

	let mut sink = Sink::new(1);
	sink.push(9_i32);
	sink.push(-7_i32);
	assert_eq!(sink.preamble_mut(),&[0x09, 0x00, 0x00, 0x00, 0xf9, 0xff, 0xff, 0xff]);
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
	let mut sink = Sink::new(1);
	sink.push(9_u64);
	sink.push(7_u64);
	let arr = sink.preamble_mut();
	let mut stream = Stream::new(arr.as_ref());
	let val: u64 = stream.pop::<u64>().unwrap();
	assert_eq!(val, 9_u64);
	let val: u64 = stream.pop::<u64>().expect("argument decoding failed");
	assert_eq!(val, 7_u64);
}

#[test]
fn i64() {
	let payload: &[u8; 16] = &[
		0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,0xf9, 0xff, 0xff, 0xff,0xff, 0xff, 0xff,0xff
	];

	let mut stream = Stream::new(&payload[..]);

	let val: i64 = stream.pop::<i64>().unwrap();
	assert_eq!(val, 9_i64);
	let val: i64 = stream.pop::<i64>().expect("argument decoding failed");
	assert_eq!(val, -7_i64);

	let mut sink = Sink::new(1);
	sink.push(9_i64);
	sink.push(-7_i64);
	assert_eq!(sink.preamble_mut(),&[0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,0xf9, 0xff, 0xff, 0xff,0xff, 0xff, 0xff,0xff]);
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


	let mut sink = Sink::new(1);
	let h256 = H256::from(U256::from(69));
	sink.push(h256);
	let mut arr: [u8; 32] = [0; 32];
	arr[0] = 0x46;
	let h256 = H256::new(arr);
	sink.push(h256);
	let sample: &[u8] = &[
		0x45, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x46, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,];
	let payload = sink.finalize_panicking();
	assert_eq!(&payload[..],sample);
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

	let mut sink = Sink::new(1);
	sink.push(true);
	sink.push(false);
	let sample: &[u8] = &[
		0x01, 0x00];
	let payload = sink.finalize_panicking();
	assert_eq!(&payload[..],sample);
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

	let mut sink = Sink::new(1);
	let arr:[u8; 20] = [0x03, 0x61, 0x64, 0x64,
		0x45, 0x00, 0x00, 0x00,
		0x45, 0x00, 0x00, 0x00,
		0x45, 0x00, 0x00, 0x00,
		0x45, 0x00, 0x00, 0x00];
	let addr = Address::new(arr);
	sink.push(addr);
	let arr:[u8; 20] = [0x00;20];
	let addr2 = Address::new(arr);
	sink.push(addr2);
	let sample: &[u8] = &[
		0x03, 0x61, 0x64, 0x64,
		0x45, 0x00, 0x00, 0x00,
		0x45, 0x00, 0x00, 0x00,
		0x45, 0x00, 0x00, 0x00,
		0x45, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00];
	let payload = sink.finalize_panicking();
	assert_eq!(&payload[..],sample);
}

#[test]
fn u32slice() {
	let payload: &[u8; 9] = &[
		0x02, 0x45, 0x00, 0x00, 0x00, 0x46, 0x00, 0x00, 0x00
	];

	let mut stream = Stream::new(&payload[..]);

	let val: Vec<u32> = stream.pop::<Vec<u32>>().unwrap();
	assert_eq!(val, vec![69_u32,70_u32]);

	let mut sink = Sink::new(1);
	let v1 = vec![69_u32,70_u32];
	sink.push(v1);
	assert_eq!(sink.preamble_mut(),&[0x02, 0x45, 0x00, 0x00, 0x00, 0x46, 0x00, 0x00, 0x00]);
}

#[test]
fn addr_to_string() {
	let payload: &[u8; 20] = &[
		0x41, 0x42, 0x43, 0x44,
		0x45, 0x46, 0x47, 0x48,
		0x49, 0x4A, 0x4B, 0x4C,
		0x4D, 0x4E, 0x4F, 0x50,
		0x51, 0x52, 0x53, 0x54
	];

	let mut stream = Stream::new(&payload[..]);

	// stream.pop::<Address>().unwrap();
	let mut addr: Address = stream.pop::<Address>().unwrap();
	assert_eq!("ujS4cV4BB9fzD3QbbXJRkB8P7Gw".to_string(), addr.to_bxa_string());
}

#[test]
fn u64_to_string() {
	let payload: &[u8; 8] = &[
		0x45, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	];

	let mut stream = Stream::new(&payload[..]);

	let val: u64 = stream.pop::<u64>().unwrap();
	assert_eq!(val, 69);
	assert_eq!("69".to_string(), val.to_bxa_string());
}

#[test]
fn string_to_string() {
	let payload: &[u8; 4] = &[
		0x03, 0x41, 0x42, 0x43
	];

	let mut stream = Stream::new(&payload[..]);

	let val: String = stream.pop::<String>().unwrap();
	assert_eq!(val, val.to_bxa_string());
}

#[test]
fn u32_write_db() {
	let mut sink = Sink::new(1);
	sink.push_db(9_u32);
	sink.push_db(7_u32);
	let arr = sink.preamble_mut();
	let mut stream = Stream::new(arr.as_ref());
	let val: u32 = stream.pop_db::<u32>().unwrap();
	assert_eq!(val, 9_u32);
	let val: u32 = stream.pop_db::<u32>().expect("argument decoding failed");
	assert_eq!(val, 7_u32);
}

#[test]
fn u64_write_db() {
	let mut sink = Sink::new(1);
	sink.push_db(9_u64);
	sink.push_db(7_u64);
	let arr = sink.preamble_mut();
	let mut stream = Stream::new(arr.as_ref());
	let val: u64 = stream.pop_db::<u64>().unwrap();
	assert_eq!(val, 9_u64);
	let val: u64 = stream.pop_db::<u64>().expect("argument decoding failed");
	assert_eq!(val, 7_u64);
}

#[test]
fn str_write_db() {
	let mut sink = Sink::new(1);
	sink.push_db("Hello".to_string());
	sink.push_db("world!".to_string());
	let arr = sink.preamble_mut();
	let mut stream = Stream::new(arr.as_ref());
	let val: String = stream.pop_db::<String>().unwrap();
	assert_eq!(val, "Hello".to_string());
	assert_eq!(6, stream.position());
	let val: String = stream.pop_db::<String>().expect("argument decoding failed");
	assert_eq!(val, "world!".to_string());
}