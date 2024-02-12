#!/bin/bash

# Install Git - Fedora
sudo dnf install -y git

# Config GitHub
sudo sh -c "$(wget https://raw.githubusercontent.com/xbrncsr/linux/main/wiki/git/config_github.sh -O -)"
