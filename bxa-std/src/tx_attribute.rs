pub type TransactionAttributeType = u8;
use lib::*;
use stream::Stream;
use sink::Sink;

pub struct TransactionAttribute {
    typ: TransactionAttributeType,
    data: Vec<u8>
}

impl TransactionAttribute {
    pub fn new() -> Self {
        let attr = TransactionAttribute{typ: 0_u8, data:vec![]};
        attr
    }

    pub fn serialize(&self, sink: &mut Sink) {
        sink.write_byte(self.typ);
        sink.write_bytes(&self.data);
    }
}