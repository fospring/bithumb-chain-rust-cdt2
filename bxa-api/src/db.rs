//! Storage extensions for pwasm-ethereum.
//! Storage api is a key-value storage where both key and value are 32 bytes in len
use super::storage;
use bxa_abi::bxa::{AbiType, Sink, Stream};

pub fn get<K: AsRef<[u8]>, T: AbiType>(key: K) -> Option<T> {
    let ty:u8 = T::get_type();
    storage::read(key.as_ref(),ty).map(|val|{
        let mut stream = Stream::new(&val);
        let t:u8 = stream.read_byte().unwrap();
        assert_eq!(ty,t);
        stream.pop::<T>().unwrap()
    })
}

pub fn put<K: AsRef<[u8]>, T: AbiType>(key:K, val: T) {
    let mut sink = Sink::new(4);
    sink.push_type(&val);
    sink.push(val);
    storage::write(key.as_ref(), sink.preamble_mut())
}

pub fn delete<K: AsRef<[u8]>>(key: K){
    storage::delete(key.as_ref());
}
