#!/bin/bash

# Install Git - Ubuntu
sudo apt install -y git

# Config GitHub
sudo sh -c "$(wget https://raw.githubusercontent.com/xbrncsr/linux/main/wiki/remote_access/ssh_service_ubuntu/install_ssh_service_ubuntu.sh -O -)"
