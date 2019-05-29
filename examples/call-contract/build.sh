#!/bin/bash

RUSTFLAGS="-C link-arg=-zstack-size=32768" cargo +nightly build --release --target wasm32-unknown-unknown
#wasm-build --target=wasm32-unknown-unknown ../../target token
wasm-gc ../../target/wasm32-unknown-unknown/release/call_contract.wasm ./call_contract.wasm
wasm2wat ./call_contract.wasm -o ./call_contract.wat
../../target/debug/bxa-gen-address ./call_contract.wasm ../../target/json/abi.json
cp ../../target/json/abi.json ./abi.json