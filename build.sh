#!/bin/bash
/home/randy/Workspace/REPOS/nitpick/build/npkc --verify --verify-contracts --extra-picky src/npk_coreutils.npk -o build/npk_coreutils -I src/ -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -L/home/randy/Workspace/REPOS/nitpick-packages/packages/nitpick-crypto -lnitpick_crypto_shim -O3
