#!/bin/bash

install_google_chrome(){
    # Instalar Google Chrome
    # Baixar o pacote do Google Chrome
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O google-chrome-stable.deb

    # Instalar o Google Chrome
    sudo dpkg -i google-chrome-stable.deb
    sudo apt install -f

    # Remover o pacote baixado (opcional)
    rm google-chrome-stable.deb

    echo "=====================> [ GOOGLE CHROME INSTALADO COM SUCESSO! ]"
}

#
install_google_chrome