use contract_info::ContractInfo;
use types::Account;
use lib::*;
use transaction::{Action, ActionType, INVOKE, DEPLOY};
use sink::Sink;
use stream::Stream;
use serialize::{Serializable, Serializer, Deserializer};
use Error;

pub struct DeployContract {
    pub contract: ContractInfo,
}

impl DeployContract {
    pub fn new() -> Self {
        DeployContract {
            contract: ContractInfo::new(),
        }
    }
}

impl Serializer for DeployContract {
    fn serialize(&self, sink: &mut Sink) {
        self.contract.serialize(sink);
    }
}

impl Deserializer for DeployContract {
    fn deserialize(&mut self, stream: &mut Stream) {
        self.contract.deserialize(stream);
    }
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

impl InvokeContract {
    pub fn new() -> Self {
        InvokeContract {
            contract_account: Account::new(),
            method: String::from(""),
            args: vec![],
        }
    }
}

impl Serializer for InvokeContract {
    fn serialize(&self, sink: &mut Sink) {
        self.contract_account.serialize(sink);
        sink.write_string(self.method.clone());
        sink.write_bytes(&self.args);
    }
}

impl Deserializer for InvokeContract {
    fn deserialize(&mut self, stream: &mut Stream) {
        self.contract_account.deserialize(stream);
        self.method = stream.read_string().unwrap();
        self.args = stream.read_bytes().unwrap().to_vec();
    }
}

impl Serializable for InvokeContract{}

impl Action for InvokeContract {
    fn get_type(&self) -> ActionType {
        INVOKE
    }
}

pub fn deserialize_payload(stream: &mut Stream, payload_type: ActionType) -> Result<Box<dyn Action>, Error> {
    if (payload_type == DEPLOY) {
        let mut deploy = DeployContract::new();
        deploy.deserialize(stream);
        return Ok(Box::new(deploy));
    } else if (payload_type == INVOKE) {
        let mut invoke = InvokeContract::new();
        invoke.deserialize(stream);
        return Ok(Box::new(invoke));
    } else {
        return Err(Error::UnknownTransactionPayloadType)
    }
}