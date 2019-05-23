#!/bin/bash

RUSTFLAGS="-C link-arg=-zstack-size=32768" cargo +nightly build --release --target wasm32-unknown-unknown
#wasm-build --target=wasm32-unknown-unknown ../../target bxa
wasm-gc ../../target/wasm32-unknown-unknown/release/bxa.wasm ./bxa.wasm
wasm2wat ./bxa.wasm -o ./bxa.wat
../../target/debug/bxa-gen-address ./bxa.wasm ./token.json
#du -sh ../../target/*
#wasm-gc ../../target/release/bxa.wasm ../../release/target/bxa.wasm
#cargo rustc -- -Zunstable-options --pretty=expanded