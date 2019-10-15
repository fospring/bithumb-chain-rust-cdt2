use num::bigint::{BigUint, ToBigUint};
use num::integer::Integer;
use num::traits::cast::ToPrimitive;
use num::traits::Zero;
use sha2::{Digest, Sha256};
use alloc::string::String;
use alloc::vec::Vec;

/// double hash
pub fn db_hash256<D: AsRef<[u8]>>(data: D) -> [u8; 32] {
    let mut hash = [0; 32];
    let dhash = Sha256::digest(&Sha256::digest(data.as_ref()));
    hash[..].copy_from_slice(&dhash);
    hash
}

const BITCOIN_ENCODING: &'static str = "123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz";
const SPEC_CHAR: u8 = 76;

/// Address to base58 string
#[allow(dead_code)]
pub fn to_base58(val: &[u8; 20]) -> String {
    let mut data = [0u8; 25];
    data[0] = SPEC_CHAR;
    data[1..21].copy_from_slice(val);
    let hash = db_hash256(&data[..21]);
    data[21..].copy_from_slice(&hash[0..4]);
    let b256 = BigUint::from(256u32);

    let mut bigint = data.iter().fold(BigUint::from(0u32), |sum, v| sum * &b256 + v);
    let b58 = BigUint::from(58u32);
    let mut chars = Vec::with_capacity(20);
    loop {
        let (left, c) = bigint.div_rem(&b58);
        bigint = left;
        chars.push(BITCOIN_ENCODING.as_bytes()[c.to_u64().unwrap() as usize]);
        if bigint.is_zero() {
            break;
        }
    }
    chars.reverse();

    String::from_utf8(chars).unwrap()
}

/// base58 string to Address
pub fn from_base58(val: &str) -> Result<[u8; 20], String> {
    let temp = val.as_bytes().to_vec();
    let new_val = String::from_utf8(temp).unwrap();
    let b58 = BigUint::from(58u32);
    let mut bigint: BigUint = Zero::zero();
    for c in new_val.chars() {
        match BITCOIN_ENCODING.find(c) {
            None => return Err(format!("invalid char: {}", c)),
            Some(x) => {
                bigint = bigint * &b58 + x.to_biguint().unwrap();
            }
        }
    }
    let b256 = BigUint::from(256u32);
    let mut origin_data = Vec::with_capacity(25);
    loop {
        let (left, c) = bigint.div_rem(&b256);
        bigint = left;
        origin_data.push(c.to_u8().unwrap_or_default());
        if bigint.is_zero() {
            break;
        }
    }
    origin_data.reverse();
    if origin_data.len() != 25 {
        return Err(format!("error length, expected: {}, got: {}", 25, origin_data.len()));
    }
    if origin_data[0] != SPEC_CHAR {
        return Err(format!("spec_char mismatch, expected: {}, got: {}", SPEC_CHAR, origin_data[0]));
    }

    let hash = db_hash256(&origin_data[..21]);
    if &origin_data[21..] != &hash[0..4] {
        return Err(format!(
            "hash check failed, expected:{:?}, got: {:?}",
            &origin_data[21..],
            &hash[0..4]
        ));
    }
    let mut res = [0u8; 20];
    res.copy_from_slice(&origin_data[1..21]);
    Ok(res)
}

#[test]
fn base58() {
    assert_eq!("XeFYQScWSznQGMv9i9QL1ukMnLeEe11Bdw", to_base58(&[
        39, 23, 142, 93, 140,
        86, 72, 0, 7, 118,
        20, 84, 149, 59, 28,
        233, 63, 19, 77, 40
    ]));
    assert_eq!([0; 20], from_base58(to_base58(&[0; 20]).as_str()).unwrap());
}
