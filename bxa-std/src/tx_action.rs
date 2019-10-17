use contract_info::ContractInfo;
use types::Account;
use lib::*;
use transaction::{Action, ActionType, INVOKE, DEPLOY};
use sink::Sink;
use stream::Stream;
use serialize::{Serializable, Serializer, Deserializer};

pub struct DeployContract {
    pub contract: ContractInfo,
}

impl Serializer for DeployContract {
    fn serialize(&self, sink: &mut Sink){}
}

impl Deserializer for DeployContract {
    fn deserialize(&self, stream: &mut Stream){}
}

impl Serializable for DeployContract {}

impl Action for DeployContract {
    fn get_type(&self) -> ActionType {
        DEPLOY
    }
}

pub struct InvokeContract {
    pub contract_account: Account,
    pub method: String,
    pub args: Vec<u8>,
}