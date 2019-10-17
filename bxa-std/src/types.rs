//! Provides primitive fixed size hash types.

// Constructed via `fixed_hash` crate macro.

pub use uint::U256;
construct_fixed_hash! {
	/// A 160 bits (20 bytes) hash type.
	///
	/// # Note
	///
	/// Can be interchanged with `Address`
	pub struct H160(20);
}

construct_fixed_hash! {
	/// A 256-bits (32 bytes) hash type.
	pub struct H256(32);
}

// Auto-impl `From` conversions between `H256` and `H160`.
impl_fixed_hash_conversions!(H256, H160);


/// Represents an address in bxa context.
/// 
/// # Note
pub type Address = H160;

use super::String;
use base58::{from_base58, to_base58};
use sink::Sink;
use stream::Stream;

impl AsRef<Address> for Address {
    fn as_ref(&self) -> &Address {
        return self;
    }
}

impl From<U256> for H256 {
    fn from(uint: U256) -> H256 {
        let mut hash = H256::zero();
        uint.to_little_endian(hash.as_bytes_mut());
        hash
    }
}

impl H256 {
    pub fn serialize(&self, sink: &mut Sink) {
        sink.write_bytes(&self.0)
    }
}

impl<'a> From<&'a U256> for H256 {
    fn from(uint: &'a U256) -> H256 {
        let mut hash: H256 = H256::zero();
        uint.to_big_endian(hash.as_bytes_mut());
        hash
    }
}

impl From<H256> for U256 {
    fn from(hash: H256) -> U256 {
        U256::from(hash.as_bytes())
    }
}

impl<'a> From<&'a H256> for U256 {
    fn from(hash: &'a H256) -> U256 {
        U256::from(hash.as_bytes())
    }
}

impl Address {
    /// copy bytes to dest
    pub fn copy_to(&self, dest: &mut [u8]) {
        dest.copy_from_slice(&self.0[0..20]);
    }
}

impl Address {
    /// new Address
    pub fn new(data: [u8; 20]) -> Self {
        H160(data)
    }
    pub fn from_base58(b: String) -> Self {
        let res = from_base58(&b).unwrap();
        Address::new(res)
    }
    pub fn to_base58(&self) -> String {
        let a = self.0;
        let b = to_base58(&a);
        b
    }
    pub fn serialize(&self, sink: &mut Sink) {
        sink.write_bytes(&self.0);
    }
}

impl H256 {
    /// new Hash256
    pub fn new(data: [u8; 32]) -> Self {
        H256(data)
    }
}

type AccountType = u8;

pub const AddressAccount: AccountType = 0x01;
pub const VdnsNameAccount: AccountType = 0x02;
pub const MAX_VDNS_NAME_LENGTH: usize = 32;

pub struct Account {
    pub address: Address,
    pub vdns_name: String,
    pub a_type: u8,
}

impl Account {
    pub fn new() -> Self {
        Account { address: Address::new([0_u8; 20]), vdns_name: String::from(""), a_type: AddressAccount }
    }

    pub fn from_address(address: Address) -> Self {
        Account { address: address, vdns_name: String::from(""), a_type: AddressAccount }
    }

    pub fn from_vdns_name(vdns_name: String) -> Self {
        Account { address: Address::new([0_u8; 20]), vdns_name: vdns_name, a_type: VdnsNameAccount }
    }
    pub fn from_string(value: String) -> Self {
        if value.len() <= MAX_VDNS_NAME_LENGTH {
            return Account::from_vdns_name(value);
        }
        let addr = Address::from_base58(value);
        return Account::from_address(addr);
    }
    pub fn to_string(&self) -> String {
        if self.a_type == VdnsNameAccount {
            return self.vdns_name.clone();
        }
        self.to_base58()
    }
    pub fn from_base58(b: String) -> Self {
        let addr = Address::from_base58(b);
        return Account::from_address(addr);
    }
    pub fn to_base58(&self) -> String {
        if self.a_type != AddressAccount {
            return String::from("");
        }
        let b = self.address.to_base58();
        b
    }
    pub fn serialize(&self, sink: &mut Sink) {
        sink.write_byte(self.a_type);
        if self.a_type == AddressAccount {
            self.address.serialize(sink);
        } else {
            sink.write_string(self.vdns_name.clone());
        }
    }
}


#[test]
fn test_account_from_address() {
    let addr = Address::new([39, 23, 142, 93, 140,
        86, 72, 0, 7, 118,
        20, 84, 149, 59, 28,
        233, 63, 19, 77, 40]);
    let mut acc1 = Account::from_address(addr);
    let mut acc2 = Account::from_string(String::from("XeFYQScWSznQGMv9i9QL1ukMnLeEe11Bdw"));
    assert_eq!(acc1.to_string(), acc2.to_string());
    assert_eq!(String::from("XeFYQScWSznQGMv9i9QL1ukMnLeEe11Bdw"), acc1.to_string());
}