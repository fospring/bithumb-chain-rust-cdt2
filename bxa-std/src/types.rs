//! Provides primitive fixed size hash types.

// Constructed via `fixed_hash` crate macro.

pub use uint::U256;
construct_fixed_hash!{
	/// A 160 bits (20 bytes) hash type.
	///
	/// # Note
	///
	/// Can be interchanged with `Address`
	pub struct H160(20);
}

construct_fixed_hash!{
	/// A 256-bits (32 bytes) hash type.
	pub struct H256(32);
}

// Auto-impl `From` conversions between `H256` and `H160`.
impl_fixed_hash_conversions!(H256, H160);
//use alloc::string::ToString;
//use alloc::string::String;

/// Represents an address in bxa context.
/// 
/// # Note
/// 
/// Addresses have 160 bytes length.
pub type Address = H160;

impl AsRef<Address> for Address {
	fn as_ref(&self) -> &Address {
		return self;
	}
}

impl Address {
	/// copy bytes to dest
	pub fn copy_to(&self, dest: &mut[u8]) {
		dest.copy_from_slice(&self.0[0..20]);
	}
}

impl From<U256> for H256 {
	fn from(uint: U256) -> H256 {
		let mut hash = H256::zero();
		uint.to_little_endian(hash.as_bytes_mut());
		hash
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
	/// new Address
	pub fn new(data: [u8; 20]) -> Self {
		H160(data)
	}
}

impl H256 {
	/// new Hash256
	pub fn new(data: [u8; 32]) -> Self {
		H256(data)
	}
}