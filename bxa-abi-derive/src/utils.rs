use {syn, quote};

construct_fixed_hash!{
	/// Uninterpreted 32 byte (256 bit) large hash type.
	pub struct H256(32);
}

pub struct SignatureIterator<'a> {
	method_sig: &'a syn::MethodSig,
	position: usize,
}

impl<'a> Iterator for SignatureIterator<'a> {
	type Item = (syn::Pat, syn::Type);

	fn next(&mut self) -> Option<Self::Item> {
		while self.position < self.method_sig.decl.inputs.len() {
			if let syn::FnArg::Captured(ref arg_captured) =
				self.method_sig.decl.inputs[self.position]
			{
				self.position += 1;
				return Some((arg_captured.pat.clone(), arg_captured.ty.clone()));
			} else {
				self.position += 1;
			}
		}
		None
	}
}

pub fn iter_signature(method_sig: &syn::MethodSig) -> SignatureIterator {
	SignatureIterator {
		method_sig: method_sig,
		position: 0,
	}
}

pub fn produce_signature<T: quote::ToTokens>(
	ident: &syn::Ident,
	method_sig: &syn::MethodSig,
	t: T,
) -> proc_macro2::TokenStream {
	let args = method_sig.decl.inputs.iter().filter_map(|arg| match arg {
		syn::FnArg::Captured(arg_captured) => {
			let pat = &arg_captured.pat;
			let ty = &arg_captured.ty;
			Some(quote!{#pat: #ty})
		}
		_ => None,
	});
	match method_sig.decl.output {
		syn::ReturnType::Type(_, ref output) => {
			quote!{
				fn #ident(&mut self, #(#args),*) -> #output {
					#t
				}
			}
		},
		syn::ReturnType::Default => {
			quote!{
				fn #ident(&mut self, #(#args),*) {
					#t
				}
			}
		}
	}
}

fn push_int_const_expr(target: &mut String, expr: &syn::Expr) {
	match expr {
		syn::Expr::Lit(syn::ExprLit{lit: syn::Lit::Int(lit_int), ..}) => {
			target.push_str(&format!("{}", lit_int.value()))
		}
		_ => panic!("Cannot use something other than integer literal in this constant expression"),
	}
}

fn push_canonicalized_vec(target: &mut String, args: &syn::PathArguments) {
	match args {
		syn::PathArguments::AngleBracketed(gen_args) => {
			let last_arg = gen_args.args.last().unwrap();
			let last_type = last_arg.value();
			if let syn::GenericArgument::Type(syn::Type::Path(type_path)) = last_type {
				return if type_path.qself.is_none()
					&& type_path.path.segments.last().unwrap().value().ident == "u8"
				{
					target.push_str("bytes");
				}
				else {
					push_canonicalized_path(target, type_path);
					target.push_str("[]");
				}
			}
			panic!("Unsupported generic arguments")
		},
		_ => panic!("Unsupported vec arguments"),
	}
}

fn push_canonicalized_primitive(target: &mut String, seg: &syn::PathSegment) {
	match seg.ident.to_string().as_str() {
		"u8" => target.push_str("uint8"),
		"u32" => target.push_str("uint32"),
		"i32" => target.push_str("int32"),
		"u64" => target.push_str("uint64"),
		"i64" => target.push_str("int64"),
		"U256" => target.push_str("uint256"),
		"H256" => target.push_str("uint256"),
		"Address" => target.push_str("address"),
		"String" => target.push_str("string"),
		"bool" => target.push_str("bool"),
		"Vec" => push_canonicalized_vec(target, &seg.arguments),
//		val => panic!(
//			"[e1] Unable to handle param of type {}: not supported by abi",
//			val
//		),
		val => target.push_str(val),
	}
}

fn push_canonicalized_path(target: &mut String, type_path: &syn::TypePath) {
	assert!(type_path.qself.is_none(), "Unsupported type path for canonicalization!");
	let last_path = type_path.path.segments.last().unwrap();
	push_canonicalized_primitive(target, *last_path.value())
}

fn push_canonicalized_type(target: &mut String, ty: &syn::Type) {
	match ty {
		syn::Type::Path(type_path) if type_path.qself.is_none() => {
			push_canonicalized_path(target, &type_path)
		},
		syn::Type::Array(type_array) => {
			// Special cases for `bytesN`
			if let syn::Type::Path(type_path) = &*type_array.elem {
				if "u8" == type_path.path.segments.last().unwrap().value().ident.to_string() {
					target.push_str("bytes");
					push_int_const_expr(target, &type_array.len);
					return;
				}
			}

			panic!("Unsupported! Use variable-size arrays")
		},
		other_type => panic!("[e2] Unable to handle param of type {:?}: not supported by abi", other_type),
	}
}

/// Returns the canonicalized string representation for the given type.
pub fn canonicalize_type(ty: &syn::Type) -> String {
	let mut result = String::new();
	push_canonicalized_type(&mut result, ty);
	result
}

