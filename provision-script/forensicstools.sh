#!/bin/bash

# Forensics tools
mkdir -p ~/tools/for
dir=~/tools/for
sudo -E -# apt-get install -y python-lzma python-crypto libqt4-opengl python-opengl python-qt4 python-qt4-gl python-numpy python-scipy

# binwalk, foremost, exiftool, socat, nmap, zmap
sudo -E apt-get install -y binwalk foremost exiftool socat nmap zmap

# TestDisk
if [ ! -e $dir/testdisk-7.0 ]; then
  cd $dir && curl https://www.cgsecurity.org/testdisk-7.0.linux26-x86_64.tar.bz2 | tar xj
fi

# Amass
sudo snap install amass
