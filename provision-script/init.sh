#!/bin/bash

# init
sudo apt-get update
sudo apt-get install -y git python-pip

# Pwn tools
bash /tmp/provision-script/pwntools.sh

# Forensics tools
bash /tmp/provision-script/forensicstools.sh
