#!/bin/bash

function execute_command1() {
    if sudo apt --fix-broken install -y; then
        echo "Comando 1: Sucesso"
    else
        echo "Comando 1: Falha"
    fi
}

function execute_command2() {
    if sudo apt clean; then
        echo "Comando 2: Sucesso"
    else
        echo "Comando 2: Falha"
    fi
}

function execute_command3() {
    if sudo apt install -f -y; then
        echo "Comando 3: Sucesso"
    else
        echo "Comando 3: Falha"
    fi
}

function execute_command4() {
    if sudo dpkg --configure -a; then
        echo "Comando 4: Sucesso"
    else
        echo "Comando 4: Falha"
    fi
}

function execute_command5() {
    if sudo rm /var/lib/apt/lists/* -vf; then
        echo "Comando 5: Sucesso"
    else
        echo "Comando 5: Falha"
    fi
}

function execute_command6() {
    if sudo apt update; then
        echo "Comando 6: Sucesso"
    else
        echo "Comando 6: Falha"
    fi
}

function execute_command7() {
    if sudo apt clean; then
        echo "Comando 7: Sucesso"
    else
        echo "Comando 7: Falha"
    fi
}

function execute_command8() {
    if sudo apt autoclean; then
        echo "Comando 8: Sucesso"
    else
        echo "Comando 8: Falha"
    fi
}

function execute_command9() {
    if sudo apt autoremove; then
        echo "Comando 9: Sucesso"
    else
        echo "Comando 9: Falha"
    fi
}

function execute_command10() {
    if sudo dpkg --configure -a; then
        echo "Comando 10: Sucesso"
    else
        echo "Comando 10: Falha"
    fi
}

function execute_command11() {
    if sudo apt update; then
        echo "Comando 11: Sucesso"
    else
        echo "Comando 11: Falha"
    fi
}

# Função principal
function resolve_broken_packages() {
    execute_command1
    execute_command2
    execute_command3
    execute_command4
    execute_command5
    execute_command6
    execute_command7
    execute_command8
    execute_command9
    execute_command10
    execute_command11

    # Verificar o resultado geral
    if [ $? -eq 0 ]; then
        echo "Todos os comandos foram bem-sucedidos"
    else
        echo "Pelo menos um comando falhou"
    fi
}

# Executar Função principal
resolve_broken_packages
