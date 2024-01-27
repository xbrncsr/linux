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

# Menu interativo usando zenity com múltipla escolha
selected_tasks=$(zenity \
    --list \
    --checklist \
    --title="Ubuntu Installer" \
    --text="Choose tasks to execute:" \
    --column="Select" \
    --column="Tasks" \
    FALSE "${tasks[@]/%/ FALSE}"
)

# Executa as tarefas escolhidas
if [ -n "$selected_tasks" ]; then
    IFS='|' read -ra tasks_to_execute <<< "$selected_tasks"
    for task_index in "${tasks_to_execute[@]}"; do
        execute_task "${tasks[$((task_index+1))]}"
    done
fi
