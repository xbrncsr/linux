#!/bin/bash

# Inclui as funções
curl -sSL https://github.com/cesarbrunoms/linux/blob/main/ubuntu/scripts/funcoes/atualizacao.sh
curl -sSL https://github.com/cesarbrunoms/linux/blob/main/ubuntu/scripts/funcoes/upgrade.sh
curl -sSL https://github.com/cesarbrunoms/linux/blob/main/ubuntu/scripts/funcoes/resolucao.sh
curl -sSL https://github.com/cesarbrunoms/linux/blob/main/ubuntu/scripts/funcoes/limpeza.sh

update_system() {
    if update_packages; then
        echo "Atualização da lista de pacotes concluída com sucesso."
        if upgrade_packages; then
            echo "Upgrade de pacotes bem-sucedido."
        else
            echo "Erro ao realizar o upgrade de pacotes. Verifique e corrija antes de prosseguir."
        fi
    else
        echo "Erro ao atualizar a lista de pacotes. Verifique sua conexão com a internet e tente novamente."
        # Adicione ações de recuperação, se necessário
        resolve_broken_packages
    fi

    # Realiza a limpeza do sistema após a atualização
    system_cleaning
}

# Chama a função principal
update_system
