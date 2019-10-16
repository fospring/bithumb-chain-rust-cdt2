use serialize::Serializable;
use lib::*;
use tx_attribute::TransactionAttribute;
use types::Address;
use sig::Sig;

pub const TX_VERSION:u8 = 0;

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

pub struct TransactionInfo {
    pub height: u32,
    pub tx: Vec<Transaction>,
}