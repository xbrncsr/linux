#!/bin/bash

# Verifica se o zenity está instalado, e o instala se necessário
if ! command -v zenity &> /dev/null; then
    sudo apt-get update
    sudo apt-get install -y zenity
fi

# Função para executar tarefa e registrar no log
execute_task() {
    task="$1"
    log_file="$HOME/Desktop/installer_log.txt"

    echo "Executing: $task" >> "$log_file"
    eval "$task" >> "$log_file" 2>&1

    if [ $? -eq 0 ]; then
        echo "Task completed successfully." >> "$log_file"
    else
        echo "Error in task execution." >> "$log_file"
    fi

    echo "---------------------------------------" >> "$log_file"
}

# Array de tarefas
tasks=(
    "sudo apt update"
    "sudo apt upgrade -y && sudo apt full-upgrade -y"
    "sudo apt install -y ubuntu-restricted-extras"
)

# Menu interativo usando zenity
choice=$(zenity --list --title="Ubuntu Installer" --text="Choose tasks to execute:" --column="Tasks" "${tasks[@]}")

# Executa a tarefa escolhida
if [ -n "$choice" ]; then
    task_index=$((CHOICE-1))
    execute_task "${tasks[$task_index]}"
fi
