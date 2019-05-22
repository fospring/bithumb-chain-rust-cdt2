//! JSON generation

use {items, utils};
use serde_json;

use std::{io};
use std;
use utils::type_mapping;

/// The result type for JSON errors.
pub type JsonResult<T> = std::result::Result<T, JsonError>;

/// Errors that may occur during JSON operations.
#[derive(Debug)]
pub enum JsonError {
	FailedToCreateDirectory(io::Error),
	FailedToCreateJsonFile(io::Error),
	FailedToWriteJsonAbiFile(serde_json::Error),
}

impl JsonError {
	/// Returns a JSON error indicating that the creation of the
	/// directory that will contain the JSON file failed.
	pub fn failed_to_create_dir(err: io::Error) -> Self {
		JsonError::FailedToCreateDirectory(err)
	}

	/// Returns a JSON error indicating that the creation of the JSON
	/// abi file failed.
	pub fn failed_to_create_json_file(err: io::Error) -> Self {
		JsonError::FailedToCreateJsonFile(err)
	}

	/// Returns a JSON error indicating that the writing of the JSON
	/// abi file failed.
	pub fn failed_to_write_json_abi_file(err: serde_json::Error) -> Self {
		JsonError::FailedToWriteJsonAbiFile(err)
	}
}

impl std::fmt::Display for JsonError {
	fn fmt(&self, f: &mut std::fmt::Formatter) -> std::result::Result<(), std::fmt::Error> {
		match self {
			JsonError::FailedToCreateDirectory(err) => {
				write!(f, "failed to create directory for JSON abi file: {:?}", err)
			}
			JsonError::FailedToCreateJsonFile(err) => {
				write!(f, "failed to create JSON abi file: {:?}", err)
			}
			JsonError::FailedToWriteJsonAbiFile(err) => {
				write!(f, "failed to write JSON abi file: {:?}", err)
			}
		}
	}
}

impl std::error::Error for JsonError {
	fn description(&self) -> &str {
		match self {
			JsonError::FailedToCreateDirectory(_) => {
				"failed to create directory for the JSON abi file"
			}
			JsonError::FailedToCreateJsonFile(_) => "failed to create JSON abi file",
			JsonError::FailedToWriteJsonAbiFile(_) => "failed to write JSON abi file",
		}
	}

	fn cause(&self) -> Option<&std::error::Error> {
		match self {
			JsonError::FailedToCreateDirectory(err) => Some(err),
			JsonError::FailedToCreateJsonFile(err) => Some(err),
			JsonError::FailedToWriteJsonAbiFile(err) => Some(err),
		}
	}
}

/// Writes generated abi JSON file to destination in default target directory.
///
/// # Note
///
/// The generated JSON information may be used by offline tools around WebJS for example.
pub fn write_json_abi(intf: &items::Interface) -> JsonResult<()> {
	use std::{env, fs, path};

	let target = {
		let mut target =
			path::PathBuf::from(env::var("CARGO_TARGET_DIR").unwrap_or(".".to_owned()));
		target.push("target");
		target.push("json");
		fs::create_dir_all(&target).map_err(|err| JsonError::failed_to_create_dir(err))?;
		target.push(&format!("{}.json", intf.name()));
		target
	};

	let mut f =
		fs::File::create(target).map_err(|err| JsonError::failed_to_create_json_file(err))?;

    let abi: BxaAbi = intf.into();

	serde_json::to_writer_pretty(&mut f, &abi)
		.map_err(|err| JsonError::failed_to_write_json_abi_file(err))?;

	Ok(())
}

#[derive(Serialize, Debug)]
pub struct Argument {
    pub name: String,
    #[serde(rename = "type")]
    pub type_: String,
	pub component: Vec<Argument>,
}

#[derive(Serialize, Debug)]
pub struct BxaFunctionEntry {
    pub name: String,
    pub inputs: Vec<Argument>,
    pub outputs: Vec<Argument>,
}

#[derive(Serialize, Debug)]
pub struct BxaAbi{
    pub version: String,
    pub address: String,
    pub functions: Vec<BxaFunctionEntry>,
    pub events: Vec<BxaEventEntry>,
}

#[derive(Serialize, Debug)]
pub struct BxaEventEntry {
    pub name: String,
    pub inputs: Vec<Argument>,
}

impl<'a> From<&'a items::Interface> for BxaAbi {
    fn from(intf: &items::Interface) -> Self {
        let mut result = BxaAbi{
			version: "1.0".to_string(),
            address: "".to_string(),
            functions: Vec::new(),
            events: Vec::new(),
        };
        for item in intf.items() {
            match *item {
                items::Item::Signature(ref signature) => result.functions.push(signature.into()),
                items::Item::Event(ref event) => result.events.push(event.into()),
                _ => {}
            }
        }

		if let Some(constructor) = intf.constructor() {
			result.functions.push(constructor.into());
		}
        result
    }
}

impl<'a> From<&'a items::Signature> for BxaFunctionEntry {
    fn from(item: &items::Signature) -> Self {
        BxaFunctionEntry {
            name: item.name.to_string(),
            inputs: item.arguments
                .iter()
                .map(|&(ref pat, ref ty)|
                    Argument {
                        name: quote! { #pat }.to_string(),
                        type_: utils::canonicalize_type(ty),
						component: Vec::new(),
                    }
                )
                .collect(),
            outputs: item.return_types
                .iter()
                .enumerate()
                .map(|(idx, ty)| Argument { name: format!("returnValue{}", idx), type_: utils::canonicalize_type(ty), component: Vec::new() })
                .collect(),
        }
    }
}

impl<'a> From<&'a items::Event> for BxaEventEntry {
    fn from(item: &items::Event) -> Self {
        BxaEventEntry {
            name: item.name.to_string(),
            inputs: item.data
                .iter()
                .map(|&(ref pat, ref ty)|
                    Argument {
                        name: quote! { #pat }.to_string(),
                        type_: utils::canonicalize_type(ty),
						component: Vec::new(),
                    }
                )
                .collect(),
        }
    }
}

impl Argument{
	pub fn new() -> Self {
		Argument{name:"".to_string(), type_:"".to_string(), component: Vec::new()}
	}
	pub fn set_name(&mut self, name: String) -> &mut Self {
		self.name = name;
		self
	}
	pub fn set_type(&mut self, type_: String) -> &mut Self{
		self.type_ = type_;
		self
	}
	pub fn type_map(&mut self) {
		self.type_ = type_mapping(self.type_.clone());
	}
}