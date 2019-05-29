#!/bin/bash

RUSTFLAGS="-C link-arg=-zstack-size=32768" cargo +nightly build --release --target wasm32-unknown-unknown
#wasm-build --target=wasm32-unknown-unknown ../../target token
wasm-gc ../../target/wasm32-unknown-unknown/release/called_contract.wasm ./called_contract.wasm
wasm2wat ./called_contract.wasm -o ./called_contract.wat
../../target/debug/bxa-gen-address ./called_contract.wasm ../../target/json/abi.json
cp ../../target/json/abi.json ./abi.json