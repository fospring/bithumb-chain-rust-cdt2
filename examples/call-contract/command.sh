#!/bin/bash

# deploy:
./bxa-cli contract deploy --payer 0 --code ../../bxa-rust-cdt/examples/call-contract/call_contract.wasm

# call_contract:
./bxa-cli contract invoke --payer 0 --method call_contract --args 37c0ea0c8dc72079562f1d08b70c401dde4d345d,6 --abi ../../bxa-rust-cdt/examples/call-contract/abi.json -s

# call_native_transfer:
./bxa-cli contract invoke --payer 0 --method call_native_transfer --args 0000000000000000000000000000000000000001,[[AZvWo4SpSpRL7Li7gqwgwEdWWjSUpPvn4Y,AV4T8ReTeKYhf1T7EAFt6RwjXAsfrwc4Y8,100]] --abi ../../bxa-rust-cdt/examples/call-contract/abi.json -s

# call_native_transfer2:
./bxa-cli contract invoke --payer 0 --method call_native_transfer2 --args 0000000000000000000000000000000000000001,[[AZvWo4SpSpRL7Li7gqwgwEdWWjSUpPvn4Y,AV4T8ReTeKYhf1T7EAFt6RwjXAsfrwc4Y8,100]] --abi ../../bxa-rust-cdt/examples/call-contract/abi.json -s

# call_native_symbol:
./bxa-cli contract invoke --payer 0 --method call_native_symbol --args 0000000000000000000000000000000000000001 --abi ../../bxa-rust-cdt/examples/call-contract/abi.json -s
