#!/bin/bash

# Install Git - Ubuntu
sudo apt install -y git

# Config GitHub
sudo sh -c "$(wget https://raw.githubusercontent.com/xbrncsr/linux/main/wiki/install_git/config_github.sh -O -)"
