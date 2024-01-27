#!/bin/bash

# Verifica se o dialog está instalado, e o instala se necessário
if ! command -v dialog &> /dev/null; then
    sudo apt-get update
    sudo apt-get install -y dialog
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

# Menu interativo
while true; do
    choice=$(dialog \
        --clear \
        --backtitle "Ubuntu Installer" \
        --title "Tasks" \
        --menu "Choose tasks to execute:" 15 40 4 "${tasks[@]}" \
        2>&1 >/dev/tty
    )

    case $choice in
        1) execute_task "${tasks[0]}" ;;
        2) execute_task "${tasks[1]}" ;;
        3) execute_task "${tasks[2]}" ;;
        *) break ;;
    esac
done
