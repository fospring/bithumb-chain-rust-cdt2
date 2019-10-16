use contract_info::ContractInfo;
use types::Account;
use lib::*;

pub struct DeployContract {
    pub contract: ContractInfo,
}

pub struct InvokeContract {
    pub contract_account: Account,
    pub method: String,
    pub args: Vec<u8>,
}