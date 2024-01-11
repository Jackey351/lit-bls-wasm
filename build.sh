#!/bin/bash

wasm-pack build --debug --target=web
npx tsc --module commonjs pkg/lit_bls_wasm.js --allowJs --outDir pkg/tmp
mv pkg/tmp/lit_bls_wasm.js pkg
rm -r pkg/tmp
cd convertWasmToJs
python3 convert_wasm_to_js.py
