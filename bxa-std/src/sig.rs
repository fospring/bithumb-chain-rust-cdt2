use lib::*;
use ::crypto::crypto::{PublicKey,EcPublicKey};
use ::crypto::deserialize_public_key;
use stream::Stream;
use sink::Sink;

pub struct Sig {
    pub public_keys: Vec<Box<dyn PublicKey>>,
    pub m: u8,
    pub sig_data: Vec<Vec<u8>>,
}

impl Sig {
    pub fn new() -> Self {
        Sig {
            public_keys: vec![],
            m: 0,
            sig_data: vec![],
        }
    }

    pub fn serialize(&self, sink: &mut Sink) {
        let l = self.public_keys.len() as u64;
        sink.write_u64(l);
        for pk in &self.public_keys {
            pk.serialize(sink);
        }
        sink.write_u64(self.sig_data.len() as u64);
        for s_data in &self.sig_data {
            sink.write_bytes(&s_data);
        }
    }

    pub fn deserialize(&mut self, stream: &mut Stream) {
        let size = stream.read_u64().unwrap();
        for _ in 0..size {
            let pk = deserialize_public_key(stream).unwrap();
            self.public_keys.push(pk );
        }
        self.m = stream.read_u8().unwrap();
        let size = stream.read_u64().unwrap();
        for _ in 0..size {
            let s_data: &[u8] = stream.read_bytes().unwrap();
            let mut b :Vec<u8> = s_data.iter().cloned().collect();
            self.sig_data.push(b);
        }
    }
}