#!/bin/bash

# init
export DEBIAN_FRONTEND=noninteractive
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -y git python-pip

# Pwn tools
bash /tmp/provision-script/pwntools.sh

# Forensics tools
bash /tmp/provision-script/forensicstools.sh
