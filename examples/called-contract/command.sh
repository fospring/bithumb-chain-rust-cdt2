#!/bin/bash

# deploy:
./bxa-cli contract deploy --payer 0 --code ../../bxa-rust-cdt/examples/called-contract/called_contract.wasm

# double:
./bxa-cli contract invoke --payer 0 --method double --args 6 --abi ../../bxa-rust-cdt/examples/called-contract/abi.json -s