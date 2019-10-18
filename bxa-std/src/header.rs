use stream::Stream;
use sink::Sink;
use lib::*;
use ::crypto::crypto::{PublicKey,EcPublicKey};
use ::crypto::deserialize_public_key;
use types::{H256, Address, H256Size};

pub struct Header {
    pub version: u8,
    pub prev_block_hash: H256,
    pub prev_proposal_block_hash: H256,
    pub transaction_root: H256,
    pub block_root: H256,
    pub incr_state_root: H256,
    pub state_root: H256,
    pub nonce: u64,
    pub timestamp: u32,
    pub consensus_no: u32,
    pub consensus_index: u32,
    pub consensus_num: u32,
    pub height: u32,
    pub vrf_value: Vec<u8>,
    pub vrf_proof: Vec<u8>,
    pub next_bookkeeper: Address,
    pub bookkeepers: Vec<Box<dyn PublicKey>>,
    pub sig_data: Vec<Vec<u8>>,
}

impl Header {
    pub fn new() -> Self {
        Header {
            version: 0_u8,
            prev_block_hash: H256::new([0_u8; 32]),
            prev_proposal_block_hash: H256::new([0_u8; 32]),
            transaction_root: H256::new([0_u8; 32]),
            block_root: H256::new([0_u8; 32]),
            incr_state_root: H256::new([0_u8; 32]),
            state_root: H256::new([0_u8; 32]),
            nonce: 0_u64,
            timestamp: 0_u32,
            consensus_no: 0_u32,
            consensus_index: 0_u32,
            consensus_num: 0_u32,
            height: 0_u32,
            vrf_value: vec![],
            vrf_proof: vec![],
            next_bookkeeper: Address::new([0_u8; 20]),
            bookkeepers: vec![],
            sig_data: vec![],
        }
    }

    pub fn serialize(&self, sink: &mut Sink) {
        self.serialize_unsigned(sink);
        let size = self.sig_data.len() as u32;
        sink.write_u32(size);
        for sig in &self.sig_data {
            sink.write_bytes(sig);
        }
    }

    pub fn serialize_unsigned(&self, sink: &mut Sink) {
        sink.write_byte(self.version);
        sink.write_fixed_bytes(self.prev_block_hash.0.as_ref());
        sink.write_fixed_bytes(self.prev_proposal_block_hash.0.as_ref());
        sink.write_fixed_bytes(self.transaction_root.0.as_ref());
        sink.write_fixed_bytes(self.block_root.0.as_ref());
        sink.write_fixed_bytes(self.incr_state_root.0.as_ref());
        sink.write_fixed_bytes(self.state_root.0.as_ref());
        sink.write_u64(self.nonce);
        sink.write_u32(self.timestamp);
        sink.write_u32(self.consensus_no);
        sink.write_u32(self.consensus_index);
        sink.write_u32(self.consensus_num);
        sink.write_u32(self.height);
        sink.write_bytes(&self.vrf_value);
        sink.write_bytes(&self.vrf_proof);
        self.next_bookkeeper.serialize(sink);
        sink.write_u32(self.bookkeepers.len() as u32);
        for pk in &self.bookkeepers {
            pk.serialize(sink);
        }
    }

    pub fn deserialize(&mut self, stream: &mut Stream) {
        self.deserialize_unsigned(stream);
        let size = stream.read_u32().unwrap();
        for _ in 0..size {
            let data = stream.read_bytes().unwrap();
            self.sig_data.push(data.to_vec());
        }

    }

    pub fn deserialize_unsigned(&mut self, stream: &mut Stream) {
        self.version = stream.read_byte().unwrap();
        stream.read_into(&mut self.prev_proposal_block_hash.0);
        stream.read_into(&mut self.prev_proposal_block_hash.0);
        stream.read_into(&mut self.transaction_root.0);
        stream.read_into(&mut self.block_root.0);
        stream.read_into(&mut self.incr_state_root.0);
        stream.read_into(&mut self.state_root.0);
        self.nonce = stream.read_u64().unwrap();
        self.timestamp = stream.read_u32().unwrap();
        self.consensus_no = stream.read_u32().unwrap();
        self.consensus_index = stream.read_u32().unwrap();
        self.consensus_num = stream.read_u32().unwrap();
        self.height = stream.read_u32().unwrap();
        self.vrf_value = stream.read_bytes().unwrap().iter().cloned().collect();
        self.vrf_proof = stream.read_bytes().unwrap().iter().cloned().collect();
        self.next_bookkeeper.deserialize(stream);
        let size = stream.read_u32().unwrap();
        self.bookkeepers.clear();
        for _ in 0..size {
            let pk = deserialize_public_key(stream).unwrap();
            self.bookkeepers.push(pk);
        }
    }
}
