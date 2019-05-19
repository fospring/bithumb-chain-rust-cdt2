#!/bin/bash

RUSTFLAGS="-C link-arg=-zstack-size=32768" cargo +nightly build --release --target wasm32-unknown-unknown
#wasm-build --target=wasm32-unknown-unknown ../../target token
wasm-gc ../../target/wasm32-unknown-unknown/release/token.wasm ./token.wasm
wasm2wat ./token.wasm -o ./token.wat
../../target/debug/bxa-gen-address ./token.wasm ./token.json