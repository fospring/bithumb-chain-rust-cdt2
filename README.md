# bxa-rust-cdt

Rust contract development tool chain for BXA chain.  
Modify from [paritytech](https://github.com/paritytech)'s project: pwasm-std、pwasm-abi、pwasm-abi-derive、pwasm-ethereum

## Install development environment 
1. Install rustup,if network was slow you can set a proxy of USTC LUG:  
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