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
sudo pip install pwntools

# checksec
if [ ! -e $dir/checksec ]; then
  git clone --depth 1 https://github.com/slimm609/checksec.sh ~/tools/pwn/checksec
fi

## rp++
if [ ! -e $dir/rp-x86++ ]; then
  wget https://github.com/downloads/0vercl0k/rp/rp-lin-x86 -P ~/tools/pwn/rp-x86++
  wget https://github.com/downloads/0vercl0k/rp/rp-lin-x64 -P ~/tools/pwn/rp-x64++
fi

## radare2
if [ ! -e $dir/radare2 ]; then
  git clone https://github.com/radare/radare2.git ~/tools/pwn/radare2
  cd ~/tools/pwn/radare2
  sys/install.sh
fi

## angr
if [ ! -e $dir/angr-dev ]; then
  sudo -E dpkg --add-architecture i386 && sudo -E apt-get update
  sudo -E apt-get install -y libxml2-dev libxslt1-dev libffi-dev cmake libreadline-dev libtool debootstrap debian-archive-keyring libglib2.0-dev libpixman-1-dev qtdeclarative5-dev binutils-multiarch nasm libssl-dev libc6:i386 libgcc1:i386 libstdc++6:i386 libtinfo5:i386 zlib1g:i386 openjdk-8-jdk
  git clone https://github.com/angr/angr-dev.git ~/tools/pwn/angr-dev
  cd ~/tools/pwn/angr-dev
  sudo ./setup.sh -i -e angr
fi
