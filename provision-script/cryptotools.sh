#!/bin/bash

# Crypto tools
mkdir -p ~/tools/crypto
dir=~/tools/crypto

# sagemath
sudo -E apt install -y sagemath

# z3
git clone https://github.com/Z3Prover/z3.git ~/tools/crypto/z3
cd ~/tools/crypto/z3
python scripts/mk_make.py --python
cd build
make
sudo make install

