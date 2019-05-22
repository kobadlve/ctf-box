#!/bin/bash

# init
export DEBIAN_FRONTEND=noninteractive
sudo -E apt-get update
sudo -E apt-get upgrade -y
sudo -E apt-get install -y git python python3 python-dev python3-dev python3-setuptools

# pip
curl -kL https://bootstrap.pypa.io/get-pip.py | sudo python3
curl -kL https://bootstrap.pypa.io/get-pip.py | sudo python

# virtualenv
sudo pip install virtualenv virtualenvwrapper
echo 'source ~/.local/bin/virtualenvwrapper.sh' >> ~/.bashrc
echo 'export WORKON_HOME=~/.virtualenvs' >> ~/.bashrc
source ~/.bashrc

# Pwn tools
bash /tmp/provision-script/pwntools.sh

# Forensics tools
bash /tmp/provision-script/forensicstools.sh

# Crypto tools
bash /tmp/provision-script/cryptotools.sh
