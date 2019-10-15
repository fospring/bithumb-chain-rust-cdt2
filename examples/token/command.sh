#!/bin/bash

# deploy:
./bxa-cli contract deploy --payer 0 --code ../../bxa-rust-cdt/examples/token/token.wasm
./bxa-cli contract deploy --payer 0 --code /Users/fospring/work/rust/github.com/BXA/bxa-rust-cdt/examples/token/token.wasm
# init:
./bxa-cli contract invoke --payer 0 --method init --args AZvWo4SpSpRL7Li7gqwgwEdWWjSUpPvn4Y --abi ../../bxa-rust-cdt/examples/token/abi.json -s
./bxa-cli contract invoke --payer 0 --method init --args AZvWo4SpSpRL7Li7gqwgwEdWWjSUpPvn4Y --abi /Users/fospring/work/rust/github.com/BXA/bxa-rust-cdt/examples/token/abi.json

# muti_transfer:
./bxa-cli contract invoke --payer 0 --method muti_transfer --args [[AZvWo4SpSpRL7Li7gqwgwEdWWjSUpPvn4Y,AV4T8ReTeKYhf1T7EAFt6RwjXAsfrwc4Y8,120],[AZvWo4SpSpRL7Li7gqwgwEdWWjSUpPvn4Y,AHoGzMnbRmxpeJ9jgSEKbCT5exqvCxFXVH,120]] --abi ../../bxa-rust-cdt/examples/token/abi.json

# donate:
./bxa-cli contract invoke --payer 0 --method donate --args [AZvWo4SpSpRL7Li7gqwgwEdWWjSUpPvn4Y,120] --abi /Users/fospring/works/rust/BXA/test-cdt/bxa-rust-cdt/examples/token/abi.json

# balance_of:
./bxa-cli contract invoke --payer 0 --method balance_of --args AZvWo4SpSpRL7Li7gqwgwEdWWjSUpPvn4Y --abi ../../bxa-rust-cdt/examples/token/abi.json -s
./bxa-cli contract invoke --payer 0 --method balance_of --args AV4T8ReTeKYhf1T7EAFt6RwjXAsfrwc4Y8 --abi ../../bxa-rust-cdt/examples/token/abi.json -s
./bxa-cli contract invoke --payer 0 --method balance_of --args AHoGzMnbRmxpeJ9jgSEKbCT5exqvCxFXVH --abi ../../bxa-rust-cdt/examples/token/abi.json -s

# get_symbol:
./bxa-cli contract invoke --payer 0 --method get_symbol --abi ../../bxa-rust-cdt/examples/token/abi.json -s