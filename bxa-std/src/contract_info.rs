use lib::*;
use types::H256;
use sink::Sink;
use stream::Stream;

pub type ContractType = u8;
pub const UNKNOWN: ContractType = 0;
pub const NATIVE: ContractType = 1;
pub const WASM: ContractType = 1;

#[derive(Clone)]
pub struct ContractInfo {
    pub code: Vec<u8>,
    pub name: String,
    pub author: String,
    pub version: String,
    pub email: String,
    pub description: String,
    pub c_type: ContractType,
    pub tx_hash: H256,
}

impl ContractInfo {
    pub fn new() -> Self {
        ContractInfo{
            code: vec![],
            name: String::from(""),
            author: String::from(""),
            version: String::from(""),
            email: String::from(""),
            description: String::from(""),
            c_type: UNKNOWN,
            tx_hash: H256::zero(),
        }
    }
    pub fn serialize(&self, sink: &mut Sink) {
        sink.write_bytes(&self.code);
        sink.write_string(self.name.clone());
        sink.write_string(self.author.clone());
        sink.write_string(self.version.clone());
        sink.write_string(self.email.clone());
        sink.write_string(self.description.clone());
        sink.write_byte(self.c_type);
        self.tx_hash.serialize(sink);
    }
    pub fn deserialize(&mut self, stream: &mut Stream) {
        self.code = stream.read_bytes().unwrap().to_vec();
        self.name = stream.read_string().unwrap();
        self.author = stream.read_string().unwrap();
        self.version = stream.read_string().unwrap();
        self.email = stream.read_string().unwrap();
        self.description = stream.read_string().unwrap();
        self.tx_hash.deserialize(stream);
    }
}