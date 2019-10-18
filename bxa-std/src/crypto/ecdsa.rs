use crypto::common::{ECDSA256WithSHA256, CryptoScheme, PublicKey};
use Error;
use super::super::sink::Sink;
use super::super::stream::Stream;
use super::super::lib::*;

pub type CompressedFlag = u8;

pub const Even: CompressedFlag = 0x02;
pub const Odd: CompressedFlag = 0x03;
pub const No: CompressedFlag = 0x04;

pub struct EcPublicKey {
    pub crypto_scheme: CryptoScheme,
    pub data: Vec<u8>,
}

impl EcPublicKey {
    pub fn new() -> Self {
        EcPublicKey {
            crypto_scheme: ECDSA256WithSHA256,
            data: vec![],
        }
    }
}

impl PublicKey for EcPublicKey {
    fn serialize(&self, sink: &mut Sink) {
        sink.write_byte(self.crypto_scheme);
        self.encode(sink);
    }
    fn deserialize(&mut self, stream: &mut Stream) {
        self.decode(stream);
    }
    fn encode(&self, sink: &mut Sink) {
        sink.write_fixed_bytes(&self.data);
    }
    fn decode(&mut self, stream: &mut Stream) {
        let flag = stream.read_byte().unwrap();
        let point_len = 32 as usize;
        let x = stream.read_fixed_bytes(point_len).unwrap();
        if flag == No {
            &self.data.push(flag);
            &self.data.extend_from_slice(x);
            let y = stream.read_fixed_bytes(point_len).unwrap();
            &self.data.extend_from_slice(y);
        } else {
            &self.data.push(flag);
            &self.data.extend_from_slice(x);
        }
    }
}