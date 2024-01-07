#!/bin/bash

install_git(){
    sudo add-apt-repository ppa:git-core/ppa -y
    sudo apt install -y git
}

#
install_git