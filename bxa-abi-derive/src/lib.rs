//! Ethereum (Solidity) derivation for rust contracts (compiled to wasm or otherwise)

#![recursion_limit = "128"]
#![deny(unused)]
extern crate bxa_std;
extern crate proc_macro;
extern crate proc_macro2;

#[macro_use]
extern crate syn;

#[macro_use]
extern crate quote;

//extern crate serde;
extern crate serde_json;

#[macro_use(construct_fixed_hash)]
extern crate fixed_hash;

#[macro_use]
extern crate serde_derive;

mod error;
mod items;
mod utils;
mod json;

use proc_macro2::{Span};
use json::write_json_abi;
use items::Item;
use error::{Result, Error};
use syn::{DeriveInput,Lit};
use json::{AllArgs,ComponentArgs,CommonArgs};
//use std::io;
use std::fs::File;
use std::io::Read;
use std::io::Write;
use std::{fs,env,path};
use json::JsonError;

/// Arguments given to the `bxa_abi` attribute macro.
struct Args {
	endpoint_name: String,
}

impl Args {
	/// Extracts `bxa_abi` argument information from the given `syn::AttributeArgs`.
	pub fn from_attribute_args(attr_args: syn::AttributeArgs) -> Result<Args> {
		if attr_args.len() != 1 {
			return Err(Error::invalid_number_of_arguments(0));
		}
		let endpoint_name =
			if let syn::NestedMeta::Meta(syn::Meta::Word(ident)) = attr_args.get(0).unwrap() {
				Ok(ident.to_string())
			} else {
				Err(Error::malformatted_argument(0))
			}?;
		Ok(Args {
			endpoint_name,
		})
	}
	pub fn endpoint_name(&self) -> &str {
		&self.endpoint_name
	}
}

/// Derive of the Ethereum/Solidity ABI for the given trait interface.
///
/// The first parameter represents the identifier of the generated endpoint
/// implementation. The seconds parameter is optional and represents the
/// identifier of the generated client implementation.
///
/// # System Description
///
/// ## Endpoint
///
/// Converts ABI encoded payload into a called function with its parameters.
///
/// ## Client
///
/// Opposite of an endpoint that allows users (clients) to build up queries
/// in the form of a payload to functions of a contract by a generated interface.
///
/// # Example: Using just one argument
///
/// ```
/// #[bxa_abi(Endpoint)]
/// trait Contract { }
/// ```
///
/// Creates an endpoint implementation named `Endpoint` for the
/// interface defined in the `Contract` trait.
#[proc_macro_attribute]
pub fn bxa_abi(
	args: proc_macro::TokenStream,
	input: proc_macro::TokenStream,
) -> proc_macro::TokenStream {
	let args_toks = parse_macro_input!(args as syn::AttributeArgs);
	let input_toks = parse_macro_input!(input as syn::Item);

	let output = match impl_bxa_abi(args_toks, input_toks) {
		Ok(output) => output,
		Err(err) => panic!("[bxa_abi] encountered error: {}", err),
	};

	output.into()
}

#[proc_macro_attribute]
pub fn abi_struct(_args: proc_macro::TokenStream, input: proc_macro::TokenStream) -> proc_macro::TokenStream {
	let input_trans = input.clone();
	let input: DeriveInput = syn::parse(input.clone()).unwrap();
	let stru_name = input.ident.clone().to_string();
	let mut stu = ComponentArgs::new();
	&stu.set_name(stru_name).set_type(String::from("struct"));
	if let syn::Data::Struct(data) = input.data {
		for val in data.fields.iter() {
			let mut stu1 = CommonArgs::new();
			stu1.set_name(val.clone().ident.unwrap().to_string());
			if let syn::Type::Path(ty) = val.clone().ty {
				for item in ty.path.segments.iter() {
					stu1.set_type(item.ident.to_string());
				}
			}
			stu1.type_map();
		stu.components.push(AllArgs::Common(stu1));
		}
	} else {
		panic!("Only impl to struct");
	}

	let mut data = String::new();
	match File::open("./target/json/components.json") {
		Ok(mut file) => {file.read_to_string(&mut data).unwrap();
			()
		},
		Err(_) => data.push_str("[]"),
	}

	let components : Vec<ComponentArgs> = serde_json::from_str(&data).unwrap();

	let mut structs:Vec<ComponentArgs> = Vec::new();
	structs.push(stu.clone());
	for c in components.clone() {
		if stu.clone().name != c.clone().name {
			structs.push(c);
		}
	}

	let encode =  serde_json::to_string_pretty(&structs).unwrap();

	let mut target =
		path::PathBuf::from(env::var("CARGO_TARGET_DIR").unwrap_or(".".to_owned()));
	target.push("target");
	target.push("json");
	fs::create_dir_all(&target).map_err(|err| JsonError::failed_to_create_dir(err)).unwrap();
	target.push("components.json");
	let mut file = File::create(target).unwrap();
	file.write_all(encode.as_bytes()).unwrap();


	input_trans
}

#[proc_macro]
pub fn base58_to_address(item: proc_macro::TokenStream) -> proc_macro::TokenStream {
    let input = parse_macro_input!(item as Lit);
    let address = match input {
        syn::Lit::Str(litstr) => bxa_std::base58::from_base58(&litstr.value())
			.unwrap_or_else(|e| panic!("failed to parse address from base58 string for: {}", e)),
		syn::Lit::ByteStr(lit_byte_str) => bxa_std::base58::from_base58(&String::from_utf8(lit_byte_str.value()).unwrap())
			.unwrap_or_else(|e| panic!("failed to parse address from base58 byte slice for: {}", e)),
		_ => panic!("base58_to_address! only support string literal"),
    };
	let res = quote! { Address::new([#(#address),*])};
	res.into()
}

/// Implementation of `bxa_abi`.
///
/// This convenience function is mainly used to better handle the results of token stream.
fn impl_bxa_abi(args: syn::AttributeArgs, input: syn::Item) -> Result<proc_macro2::TokenStream> {
	let args = Args::from_attribute_args(args)?;
	let intf = items::Interface::from_item(input);

	write_json_abi(&intf)?;

	generate_bxa_endpoint_wrapper(&intf, args.endpoint_name())
}

/// Generates the bxa abi code in case of a single provided endpoint.
fn generate_bxa_endpoint_wrapper(
	intf: &items::Interface,
	endpoint_name: &str,
) -> Result<proc_macro2::TokenStream> {
	// FIXME: Code duplication with `generate_bxa_endpoint_and_client_wrapper`
	//        We might want to fix this, however it is not critical.
	//        >>>
	// let name_ident_use = syn::Ident::new(intf.name(), Span::call_site());
	let mod_name = format!("bxa_abi_impl_{}", &intf.name().clone());
	let mod_name_ident = syn::Ident::new(&mod_name, Span::call_site());
	// FIXME: <<<

	let endpoint_toks = generate_bxa_endpoint(endpoint_name, intf);
	let endpoint_ident = syn::Ident::new(endpoint_name, Span::call_site());

	Ok(quote! {
		#intf
		#[allow(non_snake_case)]
		mod #mod_name_ident {
			extern crate bxa_api;
			extern crate bxa_abi;
			use bxa_abi::types::{H160, H256, U256, Address, Vec, String};
			// use super::#name_ident_use;
			use super::*;
			#endpoint_toks
		}
		pub use self::#mod_name_ident::#endpoint_ident;
	})
}

fn generate_bxa_endpoint(endpoint_name: &str, intf: &items::Interface) -> proc_macro2::TokenStream {

	let ctor_branch = intf.constructor().map(
		|signature| {
			let arg_types = signature.arguments.iter().map(|&(_, ref ty)| quote! { #ty });
			quote! {
				let mut stream = bxa_abi::bxa::Stream::new(payload);
				self.inner.constructor(
					#(stream.pop::<#arg_types>().expect("argument decoding failed")),*
				);
			}
		}
	);

	let branches: Vec<proc_macro2::TokenStream> = intf.items().iter().filter_map(|item| {
		match *item {
			Item::Signature(ref signature)  => {
				let name =
					syn::LitStr::new(&signature.name.to_string(), Span::call_site());
				let ident = &signature.name;
				let arg_types = signature.arguments.iter().map(|&(_, ref ty)| quote! { #ty });
				if !signature.return_types.is_empty() {
					let return_count_literal = syn::Lit::Int(
						syn::LitInt::new(signature.return_types.len() as u64, syn::IntSuffix::Usize, Span::call_site()));
					Some(quote! {
						#name => {
							let result = inner.#ident(
								#(stream.pop::<#arg_types>().unwrap()),*
							);
							let mut sink = bxa_abi::bxa::Sink::new(#return_count_literal);
							sink.push(result);
							sink.finalize_panicking()
						}
					})
				} else {
					Some(quote! {
						#name => {
							inner.#ident(
								#(stream.pop::<#arg_types>().unwrap()),*
							);
							Vec::new()
						}
					})
				}
			},
			_ => None,
		}
	}).collect();

	let endpoint_ident = syn::Ident::new(endpoint_name, Span::call_site());
	let name_ident = syn::Ident::new(&intf.name(), Span::call_site());

	quote! {
		pub struct #endpoint_ident<T: #name_ident> {
			pub inner: T,
		}

		impl<T: #name_ident> From<T> for #endpoint_ident<T> {
			fn from(inner: T) -> #endpoint_ident<T> {
				#endpoint_ident {
					inner: inner,
				}
			}
		}

		impl<T: #name_ident> #endpoint_ident<T> {
			pub fn new(inner: T) -> Self {
				#endpoint_ident {
					inner: inner,
				}
			}

			pub fn instance(&self) -> &T {
				&self.inner
			}
		}

		impl<T: #name_ident> bxa_abi::bxa::EndpointInterface for #endpoint_ident<T> {
			#[allow(unused_mut)]
			#[allow(unused_variables)]
			fn dispatch(&mut self, payload: &[u8]) -> Vec<u8> {
				let inner = &mut self.inner;
				let mut stream = bxa_abi::bxa::Stream::new(payload);
				let method_name = stream.pop::<String>().unwrap();
				match method_name.as_str() {
					#(#branches,)*
					_ => panic!("Invalid method name"),
				}
			}

			#[allow(unused_variables)]
			#[allow(unused_mut)]
			fn dispatch_ctor(&mut self, payload: &[u8]) {
				#ctor_branch
			}
		}
	}
}
