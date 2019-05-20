#!/bin/bash

# Pwn tools
mkdir -p ~/tools/pwn
dir=~/tools/pwn
sudo -E apt-get install -y gdb libssl-dev build-essential gcc-multilib binutils lib32z1

## peda
if [ ! -e $dir/peda ]; then
  git clone https://github.com/longld/peda.git ~/tools/pwn/peda
  echo "source ~/tools/pwn/peda/peda.py" >> ~/.gdbinit
fi
## pwntools
pip install pwntools
## checksec
if [ ! -e $dir/checksec ]; then
  git clone --depth 1 https://github.com/slimm609/checksec.sh ~/tools/pwn/checksec
fi
## rp++
if [ ! -e $dir/rp-x86++ ]; then
  wget https://github.com/downloads/0vercl0k/rp/rp-lin-x86 -P ~/tools/pwn/rp-x86++
  wget https://github.com/downloads/0vercl0k/rp/rp-lin-x64 -P ~/tools/pwn/rp-x64++
fi
