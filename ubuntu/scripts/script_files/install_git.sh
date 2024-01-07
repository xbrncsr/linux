#!/bin/bash

install_git(){
    sudo add-apt-repository ppa:git-core/ppa -y
    sudo apt install -y git
    echo "=====================> [ GIT INSTALADO COM SUCESSO! ]"
}

#
install_git