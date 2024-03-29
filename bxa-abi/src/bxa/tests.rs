use super::*;
use super::types::*;
use lib::*;

#[cfg(feature = "std")]
macro_rules! assert_eq_core { ($a:expr, $b:expr) => (assert_eq!($a, $b)) }

#[cfg(not(feature = "std"))]
macro_rules! assert_eq_core { ($a:expr, $b:expr) => (assert!($a == $b, stringify!($a == $b))) }

#[test]
fn bool_serializ_tostring() {
    let v1: bool = true;
    let v2: bool = false;
    let mut sink = Sink::new(1);
    sink.push(v1);
    sink.push(v2);
    let bytes = sink.preamble_mut();
    let mut stream = Stream::new(bytes);
    let val1: bool = stream.pop::<bool>().unwrap();
    let val2: bool = stream.pop::<bool>().unwrap();
    assert_eq!(v1, val1);
    assert_eq!(v2, val2);

    assert_eq!(String::from("true"), true.to_bxa_string());
    assert_eq!(String::from("false"), false.to_bxa_string());
}

#[test]
fn u8_serializ_tostring() {
    let v1: u8 = (1 << 7) - 1;
    let v2: u8 = 255;
    let mut sink = Sink::new(1);
    sink.push(v1);
    sink.push(v2);
    let bytes = sink.preamble_mut();
    let mut stream = Stream::new(bytes);
    let val1: u8 = stream.pop::<u8>().unwrap();
    let val2: u8 = stream.pop::<u8>().unwrap();
    assert_eq!(v1, val1);
    assert_eq!(v2, val2);

    assert_eq!(String::from("127"), v1.to_bxa_string());
    assert_eq!(String::from("255"), v2.to_bxa_string());
}

#[test]
fn i32_serializ_tostring() {
    let v1: i32 = 2147483647;
    let v2: i32 = -2147483647;
    let mut sink = Sink::new(1);
    sink.push(v1);
    sink.push(v2);
    let bytes = sink.preamble_mut();
    let mut stream = Stream::new(bytes);
    let val1 = stream.pop::<i32>().unwrap();
    let val2 = stream.pop::<i32>().unwrap();
    assert_eq!(v1, val1);
    assert_eq!(v2, val2);

    assert_eq!(String::from("2147483647"), v1.to_bxa_string());
    assert_eq!(String::from("-2147483647"), v2.to_bxa_string());
}

#[test]
fn u32_serializ_tostring() {
    let v1: u32 = 1;
    let v2: u32 = 2;
    let mut sink = Sink::new(1);
    sink.push(v1);
    sink.push(v2);
    let bytes = sink.preamble_mut();
    let mut stream = Stream::new(bytes);
    let val1 = stream.pop::<u32>().unwrap();
    let val2 = stream.pop::<u32>().unwrap();
    assert_eq!(v1, val1);
    assert_eq!(v2, val2);

    assert_eq!(String::from("1"), v1.to_bxa_string());
    assert_eq!(String::from("2"), v2.to_bxa_string());
}

#[test]
fn u64_serializ_tostring() {
    let v1: u64 = u64::max_value();
    let v2: u64 = 83647;
    let mut sink = Sink::new(1);
    sink.push(v1);
    sink.push(v2);
    let bytes = sink.preamble_mut();
    let mut stream = Stream::new(bytes);
    let val1 = stream.pop::<u64>().unwrap();
    let val2 = stream.pop::<u64>().unwrap();
    assert_eq!(v1, val1);
    assert_eq!(v2, val2);

    assert_eq!(String::from("18446744073709551615"), v1.to_bxa_string());
    assert_eq!(String::from("83647"), v2.to_bxa_string());
}

#[test]
fn u64_decode() {
    let bytes: [u8; 5] = [6, 12, 0, 0, 0];
    let mut stream = Stream::new(&bytes);
    let res = stream.pop::<u64>().unwrap();
    assert_eq!(12_u64, res);
}

#[test]
fn i64_serializ_tostring() {
    let v1: i64 = i64::max_value();
    let v2: i64 = i64::min_value();
    let mut sink = Sink::new(1);
    sink.push(v1);
    sink.push(v2);
    let bytes = sink.preamble_mut();
    let mut stream = Stream::new(bytes);
    let val1 = stream.pop::<i64>().unwrap();
    let val2 = stream.pop::<i64>().unwrap();
    assert_eq!(v1, val1);
    assert_eq!(v2, val2);

    assert_eq!(String::from("9223372036854775807"), v1.to_bxa_string());
    assert_eq!(String::from("-9223372036854775808"), v2.to_bxa_string());
}

#[test]
fn u256() {
    let v1: U256 = U256::from(u64::max_value());
    let v2: U256 = U256::max_value();
    let mut sink = Sink::new(1);
    sink.push(v1);
    sink.push(v2);
    let bytes = sink.preamble_mut();
    let mut stream = Stream::new(bytes);
    let val1 = stream.pop::<U256>().unwrap();
    let val2 = stream.pop::<U256>().unwrap();
    assert_eq!(v1, val1);
    assert_eq!(v2, val2);

    assert_eq!(String::from("18446744073709551615"), v1.to_bxa_string());
    assert_eq!(String::from("115792089237316195423570985008687907853269984665640564039457584007913129639935"), v2.to_bxa_string());
}

#[test]
fn addr_serialize() {
    let payload: &[u8; 20] = &[
        0x45, 0x00, 0x00, 0x00,
        0x45, 0x00, 0x00, 0x00,
        0x45, 0x00, 0x00, 0x00,
        0x45, 0x00, 0x00, 0x00,
        0x03, 0x61, 0x64, 0x64
    ];

    let mut stream = Stream::new(&payload[..]);
    let mut addr = stream.pop::<Address>().unwrap();
    assert_eq!(addr.as_mut(), &[0x45, 0x00, 0x00, 0x00, 0x45, 0x00, 0x00, 0x00, 0x45, 0x00, 0x00, 0x00, 0x45, 0x00, 0x00, 0x00, 0x03, 0x61, 0x64, 0x64]);

    let mut sink = Sink::new(1);
    let arr: [u8; 20] = [0x03, 0x61, 0x64, 0x64,
        0x45, 0x00, 0x00, 0x00,
        0x45, 0x00, 0x00, 0x00,
        0x45, 0x00, 0x00, 0x00,
        0x45, 0x00, 0x00, 0x00];
    let addr = Address::new(arr);
    sink.push(addr);
    let arr: [u8; 20] = [0x00; 20];
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
    assert_eq!(&payload[..], sample);

    let payload: &[u8; 20] = &[
        199, 20, 153, 223, 232,
        208, 165, 207, 92, 28,
        136, 202, 9, 193, 175,
        137, 243, 71, 224, 161
    ];
    let addr2: Address = Address::new(*payload);
    assert_eq!("AZvWo4SpSpRL7Li7gqwgwEdWWjSUpPvn4Y".to_string(), addr2.to_bxa_string());
}

#[test]
fn u32slice_serialize() {
    let v1: Vec<u32> = vec![69, 70, 80];
    let mut sink = Sink::new(2);
    sink.push(v1);
    let bytes = sink.preamble_mut();
    let mut stream = Stream::new(bytes);

    let val: Vec<u32> = stream.pop::<Vec<u32>>().unwrap();
    assert_eq!(val, vec![69, 70, 80]);
    assert_eq!(vec![69, 70, 80].to_bxa_string(), "[69,70,80]".to_string());
}

#[test]
fn u8slice_serialize() {
    let v1: Vec<u8> = vec![69, 70, 80];
    let mut sink = Sink::new(2);
    sink.push(v1);
    let bytes = sink.preamble_mut();
    let mut stream = Stream::new(bytes);

    let val: Vec<u8> = stream.pop::<Vec<u8>>().unwrap();
    assert_eq!(val, vec![69, 70, 80]);
    assert_eq!(vec![69, 70, 80].to_bxa_string(), "[69,70,80]".to_string());
}

#[test]
fn u8bytes_serialize() {
    let v1: [u8; 32] = [0_u8; 32];
    let mut sink = Sink::new(2);
    sink.push(v1);
    let bytes = sink.preamble_mut();
    let mut stream = Stream::new(bytes);

    let val: [u8; 32] = stream.pop::<[u8; 32]>().unwrap();
    assert_eq!(val, [0_u8; 32]);
}


#[test]
fn str_serialize_tostring() {
    let mut sink = Sink::new(1);
    sink.push(String::from("ABC"));

    let v1: String = "Welcome to The Rust Programming Language book! This version of the text assumes you are using Rust 1.31.0 or later, with edition=\"2018\" in Cargo.toml of all projects to use Rust 2018 Edition idioms. See the \"Installation\" section of Chapter 1 to install or update Rust, and see Appendix E for information on what editions of Rust are.!".to_string();
    sink.push(v1.clone());

    let arr = sink.preamble_mut();
//	assert_eq!(vec![7_u8,3_u8,65_u8,66_u8,67_u8],*arr);
    let mut stream = Stream::new(arr.as_ref());

    let val: String = stream.pop::<String>().unwrap();
    assert_eq!(String::from("ABC"), val);

    let val: String = stream.pop::<String>().expect("argument decoding failed");
    assert_eq!(val, v1.to_bxa_string());
}


#[test]
fn h256() {
    let payload: &[u8; 36] = &[
        0x45, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
        0x03, 0x61, 0x64, 0x64
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
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, ];
    let payload = sink.finalize_panicking();
    assert_eq!(&payload[..], sample);
}

#[test]
fn accoount() {
    let mut acc1 = Account::from_base58(String::from("XeFYQScWSznQGMv9i9QL1ukMnLeEe11Bdw"));
    let arr: [u8; 20] = [
        39, 23, 142, 93, 140,
        86, 72, 0, 7, 118,
        20, 84, 149, 59, 28,
        233, 63, 19, 77, 40];
    let addr = Address::new(arr);
    let acc2 = Account::from_address(addr);
    let mut sink = Sink::new(1);
    sink.push(acc1);
    sink.push(acc2);
    let bytes = sink.preamble_mut();
    let mut stream = Stream::new(bytes);
    let a1: Account = stream.pop::<Account>().unwrap();
    let a2: Account = stream.pop::<Account>().unwrap();
    assert_eq!(a1.a_type, a2.a_type);
    let s = a1.to_string();
    assert_eq!(s, a2.to_string());
}

#[test]
fn tunples() {
    let mut sink = Sink::new(4);
    let v1 = String::from("abcdefg");
    let bytes1: [u8; 20] = [0; 20];
    let v2 = (Address::new(bytes1), Address::new(bytes1), 100_u64);
    sink.push(v1);
    sink.push(v2.clone());
    let arr = sink.preamble_mut();
    let mut stream = Stream::new(arr.as_ref());
    let s = stream.pop::<String>().unwrap();
    assert_eq!(String::from("abcdefg"), s);
    let t = stream.pop::<(Address, Address, u64)>().unwrap();
    assert_eq!((Address::new(bytes1), Address::new(bytes1), 100_u64), v2);
}

#[test]
fn sink() {
    let mut sink = Sink::new(4);
    sink.push(String::from("Transfer"));
    sink.push(String::from("100"));
    sink.push(String::from("AHYKi9BKkP4ZeM5vH7xtPDfLQ5sXxxoRKq"));
    sink.push(String::from("foreverSpring"));
    let arr = sink.preamble_mut();
    let mut stream = Stream::new(arr.as_ref());
    let balance = stream.pop::<String>().unwrap();
    assert_eq!(balance, String::from("Transfer"));
    assert_eq!(stream.pop::<String>().unwrap(), String::from("100"));
    assert_eq!(stream.pop::<String>().unwrap(), String::from("AHYKi9BKkP4ZeM5vH7xtPDfLQ5sXxxoRKq"));
    assert_eq!(stream.pop::<String>().unwrap(), String::from("foreverSpring"));
    assert_eq!(arr, &[8_u8, 84, 114, 97])
}

#[test]
fn tunple() {
    let mut sink = Sink::new(4);
    let t1 = (Address::new([0_u8; 20]), Address::new([1_u8; 20]), 100_u64);
    sink.push(t1);
    let arr = sink.preamble_mut();
    let mut stream = Stream::new(arr.as_ref());
    let transfer: (Address, Address, u64) = stream.pop::<(Address, Address, u64)>().unwrap();
    assert_eq!(t1, transfer);
}