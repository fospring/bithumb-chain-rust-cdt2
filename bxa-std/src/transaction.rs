use serialize::Serializable;
use lib::*;
use tx_attribute::TransactionAttribute;
use types::Address;
use sig::Sig;
use stream::Stream;
use sink::Sink;

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
    pub fn serialize(&mut self, sink: &mut Sink) {}
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
}