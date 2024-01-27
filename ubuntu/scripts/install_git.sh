#!/bin/bash

# Add Repository
sudo add-apt-repository ppa:git-core/ppa -y

# Install Git
sudo apt install -y git

# Config Git
git config --global user.email cesarbrunoms@gmail.com
git config --global user.name xbrncsr
