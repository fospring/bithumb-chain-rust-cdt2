# bxa-rust-cdt

Rust contract development Toolkit for BXA chain.  
Modify from [paritytech](https://github.com/paritytech)'s project: pwasm-std、pwasm-abi、pwasm-abi-derive、pwasm-ethereum

## Install development environment 
1. Install rustup,if network was slow you can set a proxy of [USTC LUG](https://lug.ustc.edu.cn/wiki/mirrors/help/rust-crates#rust_crates_镜像使用帮助):  
`curl https://sh.rustup.rs -sSf | sh`
`rustup update`

2. Install nightly compiler version, and set it to default:   
`rustup install nightly`
`rustup default nighly`  

3. Add WebAssembly compile target with LLVM backend and lld linker.
`rustup target add wasm32-unknown-unknown`

4. Install develop IDE, such as Goland and so on.

## Function Selector

function selector is method name.

## Argument Encoding

Arguments were encoded as a bytes slice.

First part is the argument of total length. Rest of are real params. 

### Types encode
* String:   
  * String type, it's encoded by two parts,first is length,second part is bytes.
* bool: It was encode by a byte, true: 1, false 0.
* uint8: An unsigned integer encoded by a byte,range from [0~255]
* uint32: An unsigned integer encoded by 4 bytes by little endian. 
* int32: An signed integer encoded by 4 bytes by little endian. 
* uint64: An unsigned integer encoded by 8 bytes by little endian. 
* int64: An signed integer encoded by 8 bytes by little endian. 
* U256: An unsigned integer encoded by 32 bytes by little endian. 
* H256: Hash256, encoded by 32 bytes by little endian. 
* Address: Hash160, encoded by a bytes array with length 20. 
* Vec`<T>`: A container contains above types. It was encoded by two parts, first part is number of it's member, second part is every member's encoding.

### Types decode
* Meet with type encode.

### Type encode/decode test case
[tests](./bxa-abi/src/bxa/tests.rs)

## Abi generate
* Feature
* sample

## Events

## Storage

## Write a contract   

1 .  Create a sub project in workspace

```bash
cd examples
# project name is hello
cargo new --lib hello
```  

2 . Add this project to workspace in Cargo.toml at root:  

```toml
[workspace]
members = [
    ...
   "examples/hello",
]
``` 
3 . Add dependencies at hello project in Cargo.toml of this sub project:
```toml
[dependencies]
bxa-std = {path="../../bxa-std",version = "0.1"}
bxa-api = {path="../../bxa-api",version = "0.1"}
bxa-abi = {path="../../bxa-abi",version = "0.1"}
```
4 . Add compile dynamics library option and optimize option in Cargo.toml of this sub project:
```toml
[lib]
crate-type = ["cdylib"]
path = "src/lib.rs"

[profile.release]
panic = "abort"
lto = true
opt-level = "z"
```  

5 . Contract structure
* Anounce a trait as constraint and code genetate
    * All method should be declared in trait as constraint.  
    * `#[bxa_abi(TokenEndpoint)]` is a procedure macros which generate code and abi as functions when contract is compiling.
    * `fn constructor(&mut self)` is a constructor of this contract, assuming it will be executed when contract deployed.
    * `fn str_hello(&mut self, name:String) -> String` is a normal function which can be call after deploy.
```rust
#[bxa_abi(TokenEndpoint)]
pub trait HelloInterface {
    fn constructor(&mut self);
    fn hello(&mut self, name:String) -> String;
}
```
* Anounce a struct to implement the trait above:
```rust
pub struct HelloContract;

impl HelloInterface for HelloContract {
    fn constructor(&mut self, receiver: Address, total_supply: U256) {
        // Do nothing
    }
    fn hello(&mut self) -> String{
    let mut hello = String::from("Hello,");
            hello.push(' ');
            hello.push_str(&name);
            hello
    }
}
```
* Init EndpointInterface trait from struct HelloContract.
    * `pub fn deploy()` will be call when contract deployed, constructor function will be called.
    * `pub fn call()` will be call when invoking method except constructor function.
    * struct HelloEndpoint implement trait EndpointInterface
```rust
use bxa_abi::bxa::EndpointInterface;

#[no_mangle]
pub fn call() {
    let mut endpoint = HelloEndpoint::new(HelloContract{});
    bxa_api::ret(&endpoint.dispatch(&bxa_api::input()));
}

#[no_mangle]
pub fn deploy() {
    let mut endpoint = HelloEndpoint::new(HelloContract{});
    endpoint.dispatch_ctor(&bxa_api::input());
}
```

## Build contract:
1.  set stack size to 32 kb is suitable for most contract; use nightly version compiler; wasm is compile target whith LLVM backen and lld linker.
```bash
RUSTFLAGS="-C link-arg=-zstack-size=32768" cargo +nightly build --release --target wasm32-unknown-unknown
```  
After compiling, at project root will generate a directory named target:
```
/target  
  -/debug
  -/json                     ## ABI files save here
  -/release
  -/wasm32-unknown-unknown   ## compiled target file save here
    -/release
      -hello.wasm            ## sub project hello's target file  
```
2. Code optimize to resize target wasm file is important for this code will be saved in blockchain permanently.
* use wasm-gc after installing:
```bash
cargo install wasm-gc
wasm-gc ../../target/hello.wasm ./hello.wasm
```  
3. inspect wasm file's size:
```bash
du -sh *
```  
### Example
* [code](./examples/bxa/src/lib.rs)
* [shell](./examples/bxa/build.sh)