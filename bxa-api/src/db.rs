//! Storage extensions for pwasm-ethereum.
//! Storage api is a key-value storage where both key and value are 32 bytes in len
use super::storage;
use bxa_abi::bxa::{AbiType, Sink, Stream};

pub fn get<K: AsRef<[u8]>, T: AbiType>(key: K) -> Option<T> {
    let ty:u8 = T::get_type();
    storage::read(key.as_ref(),ty).map(|val|{
        let mut stream = Stream::new(&val);
        stream.pop().unwrap()
    })
}

pub fn put<K: AsRef<[u8]>, T: AbiType + Clone>(key:K, val: T) {
    let mut sink = Sink::new(4);
    sink.push_type(val.clone());
    sink.push(val);
    storage::write(key.as_ref(), sink.preamble_mut())
}