#!/bin/bash

# init
export DEBIAN_FRONTEND=noninteractive
sudo -E apt-get update
sudo -E apt-get upgrade -y
sudo -E apt-get install -y git python-pip

# Pwn tools
bash /tmp/provision-script/pwntools.sh

# Forensics tools
bash /tmp/provision-script/forensicstools.sh
