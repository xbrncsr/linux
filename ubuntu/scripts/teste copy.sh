#!/bin/bash

# Caminho para o arquivo de log na área de trabalho
log_file=~/Área\ de\ Trabalho/log.txt

# Array para armazenar as opções concluídas
opcoes_concluidas=()

# Função para mostrar o menu
mostrar_menu() {
  clear  
  echo "+---------------------------------------------+"
  echo "|       SELECIONE UMA OPÇÃO:                  |"
  echo "|   1. Atualizar o sistema                    |"
  echo "|   2. Instalar Ubuntu Restricted Extras      |"
  echo "|   3. Instalar Fontes Microsoft, Htop,       |"
  echo "|   IPCalc, Gparted, Neofetch, FFmpeg e       |"
  echo "|   Habilitar x86                             |"
  echo "|   4. Instalar Git                           |"
  echo "|   5. Instalar Virt-Manager                  |"
  echo "|   6. Instalar VirtualBox                    |"
  echo "|   7. Instalar Google Chrome                 |"
  echo "|   8. Sair                                   |"
  echo "+---------------------------------------------+"

  # Mudar a cor da opção se a tarefa estiver concluída
  if [ ${#opcoes_concluidas[@]} -gt 0 ]; then
    echo -e "\033[32m\nOPÇÕES CONCLUÍDAS: ${opcoes_concluidas[@]}\033[0m"
  fi
}

# Função para registrar mensagem no log
registrar_log() {
  echo "$(date +"%Y-%m-%d %H:%M:%S") - $1" >> "$log_file"
}

# Loop principal
while true; do
  mostrar_menu

  # Ler a escolha do usuário
  read -p "DIGITE O NÚMERO DA OPÇÃO DESEJADA: " choice

  case $choice in
    1)
      # Opção 1: Atualizar o sistema
      sudo apt udpate
      sudo apt upgrade -y && sudo apt full-upgrade -y
      opcoes_concluidas+=("1")
      registrar_log "Opção 1: Atualizar o sistema\n$output"
      ;;
    2)
      # Opção 2: Instalar Ubuntu Restricted Extras
      output=$(bash -c "$(wget https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/install_ubuntu_restricted_extras.sh -O -)" 2>&1)
      opcoes_concluidas+=("2")
      registrar_log "Opção 2: Instalar Ubuntu Restricted Extras\n$output"
      ;;
    3)
      # Opção 3: Instalar Fontes Microsoft, Htop, IPcalc, Gparted, Neofetch, FFmpeg e Habilitar x86
      output=$(bash -c "$(wget https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/install_fonts_microsoft.sh -O -)" 2>&1)
      output+="\n$(bash -c "$(wget https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/install_htop.sh -O -)" 2>&1)"
      output+="\n$(bash -c "$(wget https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/install_ipcalc.sh -O -)" 2>&1)"
      output+="\n$(bash -c "$(wget https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/install_gparted.sh -O -)" 2>&1)"
      output+="\n$(bash -c "$(wget https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/install_neofetch.sh -O -)" 2>&1)"
      output+="\n$(bash -c "$(wget https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/install_ffmpeg.sh -O -)" 2>&1)"
      output+="\n$(bash -c "$(wget https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/enable_x86.sh -O -)" 2>&1)"
      opcoes_concluidas+=("3")
      registrar_log "Opção 3: Instalar Fontes Microsoft, Htop, IPcalc, Gparted, Neofetch, FFmpeg e Habilitar x86\n$output"
      ;;
    4)
      # Opção 4: Instalar Git
      output=$(bash -c "$(wget https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/install_git.sh -O -)" 2>&1)
      opcoes_concluidas+=("4")
      registrar_log "Opção 4: Instalar Git\n$output"
      ;;
    5)
      # Opção 5: Instalar Virt-Manager
      output=$(bash -c "$(wget https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/install_virt_manager.sh -O -)" 2>&1)
      opcoes_concluidas+=("5")
      registrar_log "Opção 5: Instalar Virt-Manager\n$output"
      ;;
    6)
      # Opção 6: Instalar VirtualBox
      output=$(bash -c "$(wget https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/install_virtualbox.sh -O -)" 2>&1)
      opcoes_concluidas+=("6")
      registrar_log "Opção 6: Instalar VirtualBox\n$output"
      ;;
    7)
      # Opção 7: Instalar Google Chrome
      output=$(bash -c "$(wget https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/install_google_chrome.sh -O -)" 2>&1)
      opcoes_concluidas+=("7")
      registrar_log "Opção 7: Instalar Google Chrome\n$output"
      ;;
    8)
      # Opção 8: Sair do script
      break
      ;;
    *)
      # Opção inválida
      echo "=====================> [ OPÇÃO INVÁLIDA, TENTE NOVAMENTE! ]"
      ;;
  esac

  # Pausa para o usuário ler a mensagem antes de limpar a tela
  read -p "=====================> [ PRESSIONE ENTER PARA CONTINUAR...! ]"

done
