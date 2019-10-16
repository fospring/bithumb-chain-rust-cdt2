pub type TransactionAttributeType = u8;
use lib::*;

pub struct TransactionAttribute {
    typ: TransactionAttributeType,
    data: Vec<u8>
}