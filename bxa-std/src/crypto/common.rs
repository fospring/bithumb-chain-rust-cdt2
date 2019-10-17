use super::super::sink::Sink;
use super::super::stream::Stream;


pub type CryptoScheme = u8;

pub const ECDSA256WithSHA256: CryptoScheme = 1;

pub trait PublicKey {
    fn serialize(&self, sink: &mut Sink);
    fn deserialize(&mut self, stream: &mut Stream);
    fn encode(&self, sink: &mut Sink);
    fn decode(&mut self, stream: &mut Stream);
}
