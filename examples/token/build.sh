#!/bin/bash

RUSTFLAGS="-C link-arg=-zstack-size=32768" cargo +nightly build --release --target wasm32-unknown-unknown
wasm-build --target=wasm32-unknown-unknown ../../target token
wasm-gc ../../target/token.wasm ../../examples/token/token.wasm
wasm2wat ../../examples/token/token.wasm -o ./token.wat