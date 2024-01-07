#!/bin/bash

# Função para atualizar a lista de pacotes
update_system() {
    sudo apt update
}

# Função para realizar o upgrade de pacotes
upgrade_packages() {
    sudo apt upgrade -y    
}

# Função para resolver pacotes quebrados
resolve_broken_packages() {
    sudo apt --fix-broken install -y
    sudo dpkg --configure -a
    sudo apt-get install -f -y
}

# Função para realizar a limpeza do sistema
system_cleaning() {
    # Remove pacotes desnecessários
    sudo apt autoremove -y
    sudo apt autoclean -y

    # Limpa o cache do apt
    sudo apt clean -y

    # Limpa a lixeira
    rm -rf ~/.local/share/Trash/*

    # Limpa o cache do sistema
    sudo rm -rf /var/cache/apt/archives/*.deb
    sudo rm -rf /var/cache/apt/archives/partial/*
    sudo rm -rf /var/cache/apt/*.bin

    # Limpa arquivos temporários
    sudo rm -rf /tmp/*

    # Limpa o histórico de comandos
    history -c

    echo "=====================> [ LIMPEZA COMPLETA CONCLUÍDA! ]"
}

# Função principal para realizar a atualização completa do sistema
main() {
    if update_system; then
        echo "=====================> [ UPDATE DA LISTA DE PACOTES CONCLUÍDA COM SUCESSO! ]"
        if upgrade_packages; then
            echo "=====================> [ UPGRADE DE PACOTES CONCLUÍDA COM SUCESSO! ]"
        else
            echo "=====================> [ ERRO NO UPGRADE DE PACOTES! ]"
        fi
    else
        echo "=====================> [ RESOLVENDO PACOTES QUEBRADOS! ]"
        # Adicione ações de recuperação, se necessário
        resolve_broken_packages
    fi

    # Realiza a limpeza do sistema após a atualização
    system_cleaning
}

# Chama a função principal
main
