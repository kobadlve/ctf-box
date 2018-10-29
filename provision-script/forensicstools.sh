#!/bin/bash

# Forensics tools
mkdir -p ~/tools/for
dir=~/tools/for
sudo apt-get install -y python-lzma python-crypto libqt4-opengl python-opengl python-qt4 python-qt4-gl python-numpy python-scipy

# binwalk, foremost, exiftool, forensics-all(https://packages.ubuntu.com/xenial/forensics-all)
sudo apt-get install -y binwalk foremost exiftool forensics-all 

# TestDisk
if [ ! -e $dir/testdisk-7.0 ]; then
  cd $dir && curl https://www.cgsecurity.org/testdisk-7.0.linux26-x86_64.tar.bz2 | tar xj
fi
