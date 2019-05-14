use {quote, syn, utils};

use quote::TokenStreamExt;
use proc_macro2::{self, Span};

/// Represents an event of a smart contract.
#[derive(Debug)]
pub struct Event {
	/// The name of the event.
	pub name: syn::Ident,
	/// The canonalized string representation used by the keccak hash
	/// in order to retrieve the first 4 bytes required upon calling.
	// pub canonical: String,
	/// The signature of the event.
	pub method_sig: syn::MethodSig,
	/// Non-indexed parameters.
	pub data: Vec<(syn::Pat, syn::Type)>,
}

/// Represents a function declared in the contracts interface.
/// 
/// Since this is basically just the declaration of such as function
/// without implementation we refer to it as being a signature.
#[derive(Clone,Debug)]
pub struct Signature {
	/// The name of this signature.
	pub name: syn::Ident,
	/// The canonicalized string representation of this signature.
	// pub canonical: String,
	/// The parameter information of this signature.
	pub method_sig: syn::MethodSig,
	/// The arguments of this signature.
	pub arguments: Vec<(syn::Pat, syn::Type)>,
	/// The return type of this signature.
	pub return_types: Vec<syn::Type>,
}

/// An item within a contract trait.
#[derive(Debug)]
pub enum Item {
	/// An invokable function.
	Signature(Signature),
	/// An event.
	Event(Event),
	/// Some trait item that is unsupported and unhandled as of now.
	Other(syn::TraitItem),
}

/// The entire interface that is being defined by the attributed trait.
pub struct Interface {
	/// The name of the contract trait.
	name: String,
	/// The constructor signature.
	/// 
	/// # Note
	/// 
	/// This is simply the signature with the identifier being equal to `constructor`.
	constructor: Option<Signature>,
	/// The set of trait items.
	/// 
	/// # Note
	/// 
	/// These are either
	/// - `Signature`: A function declaration
	/// - `Event`: An event
	/// - `Other`: Some unsupported and unhandled trait item
	items: Vec<Item>,
}

impl Item {
	/// Returns the name of `self`.
	/// 
	/// # Note
	/// 
	/// Only returns a name if it is a supported kind of item.
	/// Only `Signature` and `Event` kinds are supported.
	fn name(&self) -> Option<&syn::Ident> {
		use Item::*;
		match *self {
			Signature(ref sig) => Some(&sig.name),
			Event(ref event) => Some(&event.name),
			Other(_) => None,
		}
	}
}

impl Interface {
	pub fn from_item(source: syn::Item) -> Self {
		let item_trait = match source {
			syn::Item::Trait(item_trait) => item_trait,
			_ => panic!("Dispatch trait can work with trait declarations only!")
		};
		let trait_items = item_trait.items;

		let (constructor_items, other_items) = trait_items
			.into_iter()
			.map(Item::from_trait_item)
			.partition::<Vec<Item>, _>(|item| {
				item.name().map_or(false, |ident| ident.to_string() == "constructor")
			});

		Interface {
			constructor: constructor_items
				.into_iter()
				.next()
				.map(|item| match item {
					Item::Signature(sig) => sig,
					_ => panic!("The constructor must be function!")
				}),
			name: item_trait.ident.to_string(),
			items: other_items,
		}
	}

	pub fn items(&self) -> &[Item] {
		&self.items
	}

	pub fn name(&self) -> &str {
		&self.name
	}

	pub fn constructor(&self) -> Option<&Signature> {
		self.constructor.as_ref()
	}
}

fn into_signature(
	ident: syn::Ident,
	method_sig: syn::MethodSig
)
	-> Signature
{
	let arguments: Vec<(syn::Pat, syn::Type)> = utils::iter_signature(&method_sig).collect();
	let return_types: Vec<syn::Type> = match method_sig.decl.output.clone() {
		syn::ReturnType::Default => Vec::new(),
		syn::ReturnType::Type(_, ty) => {
			match *ty {
				syn::Type::Tuple(tuple_type) => {
					tuple_type.elems.into_iter().collect()
				},
				ty => vec![ty],
			}
		},
	};

	Signature {
		name: ident,
		arguments: arguments,
		method_sig: method_sig,
		return_types: return_types,
	}
}

fn has_attribute(attrs: &[syn::Attribute], name: &str) -> bool {
	attrs.iter().any(|attr| {
		if let Some(first_seg) = attr.path.segments.first() {
			return first_seg.value().ident == name
		};
		false
	})
}

impl Item {
	fn event_from_trait_item(method_sig: syn::MethodSig) -> Self {
		let data = utils::iter_signature(&method_sig).collect();
		let event = Event {
			name: method_sig.ident.clone(),
			data: data,
			method_sig: method_sig,
		};
		Item::Event(event)
	}

	fn signature_from_trait_item(method_trait_item: syn::TraitItemMethod) -> Self {
		Item::Signature(into_signature(
			method_trait_item.sig.ident.clone(),
			method_trait_item.sig,
		))
	}

	pub fn from_trait_item(source: syn::TraitItem) -> Self {
		match source {
			syn::TraitItem::Method(method_trait_item) => {
				if method_trait_item.default.is_some() {
					return Item::Other(syn::TraitItem::Method(method_trait_item))
				}
				if has_attribute(&method_trait_item.attrs, "event") {
					return Self::event_from_trait_item(method_trait_item.sig)
				}
				Self::signature_from_trait_item(method_trait_item)
			},
			trait_item => Item::Other(trait_item)
		}
	}
}

impl quote::ToTokens for Item {
	fn to_tokens(&self, tokens: &mut proc_macro2::TokenStream) {
		match *self {
			Item::Event(ref event) => {
				let method_sig = &event.method_sig;
				let name = &event.name;
				let event_name: String = name.to_string();
				tokens.append_all(&[
					utils::produce_signature(
						name,
						method_sig,
						{
							let arg_name = event.data.iter().map(|&(ref pat, _)| quote!{ #pat});
							quote! {
								let mut sink = ::bxa_abi::bxa::Sink::new(4);
								sink.push(String::from(#event_name));
								#(sink.push(#arg_name.to_bxa_string()));*;
								// #(sink.push(#arg_name));*;
								let payload = sink.finalize_panicking();

								::bxa_api::log(&payload);
							}


						}
					)
				]);
			},
			Item::Signature(ref signature) => {
				tokens.append_all(syn::TraitItem::Method(
					syn::TraitItemMethod {
						attrs: Vec::new(),
						sig: signature.method_sig.clone(),
						default: None,
						semi_token: None,
					}
				).into_token_stream());
			},
			Item::Other(ref item) => {
				tokens.append_all(&[item]);
			}
		}
	}
}

impl quote::ToTokens for Interface {
	fn to_tokens(&self, tokens: &mut proc_macro2::TokenStream) {
		let trait_ident = syn::Ident::new(&self.name, Span::call_site());

		let items = &self.items;
		let constructor_item = self.constructor().map(|c| Item::Signature(c.clone()));
		tokens.append_all(
			quote! (
				pub trait #trait_ident {
					#constructor_item
					#(#items)*
				}
			)
		);
	}
}
