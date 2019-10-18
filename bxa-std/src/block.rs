use header::Header;
use lib::*;
use transaction::Transaction;
use stream::Stream;
use sink::Sink;

pub struct Block {
    pub header: Header,
    pub tx_list: Vec<Transaction>,
}

impl Block {
    pub fn new() -> Self {
        Block{
            header: Header::new(),
            tx_list: vec![],
        }
    }
    pub fn serialize(&self, sink: &mut Sink) {
        self.header.serialize(sink);
        let size = self.tx_list.len() as u64;
        sink.write_u64(size);
        for tx in &self.tx_list {
            tx.serialize(sink);
        }
    }
    pub fn deserialize(&mut self, stream: &mut Stream) {
        self.header.deserialize(stream);
        let size = stream.read_u64().unwrap();
        self.tx_list.clear();
        for _ in 0..size {
            let mut tx = Transaction::new();
            tx.deserialize(stream);
            self.tx_list.push(tx);
        }
    }
}