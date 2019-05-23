#!/bin/bash

# Crypto tools
mkdir -p ~/tools/crypto
dir=~/tools/crypto

# sagemath
sudo -E apt install -y sagemath

# z3
if [ ! -e $dir/z3 ]; then
  git clone https://github.com/Z3Prover/z3.git ~/tools/crypto/z3
  cd ~/tools/crypto/z3
  python scripts/mk_make.py --python
  cd build
  make
  sudo make install
fi

# RsaCtfTool
git clone https://github.com/Ganapati/RsaCtfTool.git ~/tools/crypto/RsaCtfTool

# hash-identifier
wget https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/hash-identifier/Hash_ID_v1.1.py -O ~/tools/crypto/hash-identifier.py
