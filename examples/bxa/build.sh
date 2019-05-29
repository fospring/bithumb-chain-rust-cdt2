#!/bin/bash

RUSTFLAGS="-C link-arg=-zstack-size=32768" cargo +nightly build --release --target wasm32-unknown-unknown
wasm-gc ../../target/wasm32-unknown-unknown/release/bxa.wasm ./bxa.wasm
wasm2wat ./bxa.wasm -o ./bxa.wat
../../target/debug/bxa-gen-address ./bxa.wasm ../../target/json/abi.json
cp ../../target/json/abi.json ./abi.json
#cargo rustc -- -Zunstable-options --pretty=expanded