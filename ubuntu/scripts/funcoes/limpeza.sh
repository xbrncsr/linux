# funcoes/limpeza.sh
#!/bin/bash

# Limpeza do sistema
system_cleaning(){
    # Remove pacotes desnecessários
    sudo apt autoremove -y
    sudo apt autoclean -y

    # Limpa o cache do apt
    sudo apt clean -y

    # Limpa a lixeira
    rm -rf ~/.local/share/Trash/*

    # Limpa o cache do navegador (exemplo para o Firefox)
    # Se você usar outro navegador, ajuste conforme necessário
    rm -rf ~/.cache/mozilla/firefox/*.default/cache/*

    # Limpa o cache do sistema
    sudo rm -rf /var/cache/apt/archives/*.deb
    sudo rm -rf /var/cache/apt/archives/partial/*
    sudo rm -rf /var/cache/apt/*.bin

    # Limpa os logs antigos
    sudo journalctl --vacuum-time=7d

    # Limpa arquivos temporários
    sudo rm -rf /tmp/*

    # Remove pacotes órfãos
    sudo deborphan | xargs sudo apt-get -y remove --purge

    # Limpa histórico de comandos
    history -c

    echo "Limpeza completa concluída."
}
