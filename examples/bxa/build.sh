#!/bin/bash

RUSTFLAGS="-C link-arg=-zstack-size=32768" cargo +nightly build --release --target wasm32-unknown-unknown
wasm-build --target=wasm32-unknown-unknown ../../target bxa
wasm2wat ../../target/bxa.wasm -o ./bxa.wat