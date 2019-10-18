use serialize::Serializable;
use lib::*;
use tx_attribute::TransactionAttribute;
use types::Address;
use sig::Sig;
use stream::Stream;
use sink::Sink;
use tx_action::deserialize_payload;

pub const TX_VERSION: u8 = 0;

pub type ActionType = u8;

pub const INVOKE: ActionType = 0;
pub const DEPLOY: ActionType = 1;

pub trait Action: Serializable {
    fn get_type(&self) -> ActionType;
}

pub struct Transaction {
    pub version: u8,
    pub nonce: u64,
    pub actions: Vec<Box<dyn Action>>,
    pub attributes: Vec<TransactionAttribute>,
    pub payer: Address,
    pub sig_data: Vec<Sig>,
}

impl Transaction {
    pub fn new() -> Self {
        let tx = Transaction {
            version: TX_VERSION,
            nonce: 0,
            actions: vec![],
            attributes: vec![],
            payer: Address::new([0_u8; 20]),
            sig_data: vec![],
        };
        tx
    }
    pub fn serialize(&mut self, sink: &mut Sink) {
        self.serialize_unsigned(sink);
        let size = self.sig_data.len() as u32;
        sink.write_u32(size);
        for sig in &mut self.sig_data {
            sig.serialize(sink);
        }
    }
    pub fn serialize_unsigned(&mut self, sink: &mut Sink) {
        sink.write_byte(self.version);
        sink.write_u64(self.nonce);
        let size = self.actions.len() as u32;
        sink.write_u32(size);
        for action in &mut self.actions {
            sink.write_byte(action.get_type());
            action.serialize(sink);
        }
        let size = self.attributes.len() as u32;
        sink.write_u32(size);
        for attribute in &mut self.attributes {
            attribute.serialize(sink);
        }
        self.payer.serialize(sink);
    }

    pub fn deserialize(&mut self, stream: &mut Stream) {
        self.deserialize_unsigned(stream);
    }
    pub fn deserialize_unsigned(&mut self, stream: &mut Stream) {
        self.version = stream.read_byte().unwrap();
        self.nonce = stream.read_u64().unwrap();
        let size = stream.read_u32().unwrap();
        for _ in 0..size {
            let action_type = stream.read_byte().unwrap();
            let action = deserialize_payload(stream, action_type).unwrap();
            self.actions.push(action);
        }
        let size = stream.read_u32().unwrap();
        for _ in 0..size {
            let mut attr = TransactionAttribute::new();
            attr.deserialize(stream);
            self.attributes.push(attr);
        }
        self.payer.deserialize(stream);
    }
}

pub struct TransactionInfo {
    pub height: u32,
    pub tx: Transaction,
}

impl TransactionInfo {
    pub fn new() -> Self {
        let tx_inf = TransactionInfo { height: 0, tx: Transaction::new() };
        tx_inf
    }
    pub fn serialize(&mut self, sink: &mut Sink) {
        sink.write_u32(self.height);
        self.tx.serialize(sink);
    }
    pub fn deserialize(&mut self, stream: &mut Stream) {
        let height = stream.read_u32().unwrap();
        self.tx.deserialize(stream);
    }
}