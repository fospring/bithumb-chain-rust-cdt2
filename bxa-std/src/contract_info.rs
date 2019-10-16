use lib::*;
use types::H256;

pub type ContractType = u8;
pub const UNKNOWN: ContractType = 0;
pub const NATIVE: ContractType = 1;
pub const WASM: ContractType = 1;

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