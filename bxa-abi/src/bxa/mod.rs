//! Legacy Ethereum-like ABI generator

#![warn(missing_docs)]

mod util;
mod stream;
mod sink;
mod common;
#[cfg(test)]
mod tests;

pub use self::stream::Stream;
pub use self::sink::Sink;
//pub use self::ToBXAString;
use bxa_std::{String};

use super::types;

/// Error for decoding rust types from stream
#[derive(Debug, PartialEq, Eq)]
pub enum Error {
	/// Invalid bool for provided input
	InvalidBool,
	/// Invalid u32 for provided input
	InvalidU32,
	/// Invalid u64 for provided input
	InvalidU64,
	/// Data size out  of range for provided input
	DataSizeOutOfRange,
	/// Unexpected end of the stream
	UnexpectedEof,
	/// Unexpected data the stream
	UnexpectedData,
	/// Other error
	Other,
}

/// Abi type trait
///
pub trait AbiType : Sized {
	/// Insantiate type from data stream
	/// Should never be called manually! Use stream.pop()
	fn decode(stream: &mut Stream) -> Result<Self, Error>;

	/// Push type to data sink
	/// Should never be called manually! Use sink.push(val)
	fn encode(self, sink: &mut Sink);

	/// encode type
	fn push_type(self, sink: &mut Sink);
}

///// Serialize and deserialize from db
//pub trait DbSerializer : Sized{
//
//	/// decode from db
//	fn decode_db(stream: &mut Stream) -> Result<Self, Error>;
//
//	/// encode to db
//	fn encode_db(self, sink: &mut Sink);
//}

/// Encoder type trait
pub trait Encoder {
	/// Encode for &str
	fn encode(&self, sink: &mut Sink);
}

/// Endpoint interface for contracts
pub trait EndpointInterface {
	/// Dispatch payload for regular method
	fn dispatch(&mut self, payload: &[u8]) -> ::lib::Vec<u8>;

	/// Dispatch constructor payload
	fn dispatch_ctor(&mut self, payload: &[u8]);
}

/// to bxa string
pub trait ToBXAString {
	/// convert to string
	fn to_bxa_string(&self) -> String;
}