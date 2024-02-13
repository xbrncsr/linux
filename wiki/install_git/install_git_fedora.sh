#!/bin/bash

# Install Git - Fedora
sudo dnf install -y git

# Config GitHub
bash -c "$(wget https://raw.githubusercontent.com/xbrncsr/linux/main/wiki/install_git/config_github.sh -O -)"
