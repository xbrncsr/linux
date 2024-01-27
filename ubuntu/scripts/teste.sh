#!/bin/bash

# Variável para armazenar o estado da tarefa
tarefa_concluida=false

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
  if $tarefa_concluida; then
    echo -e "\033[32mOPÇÃO CONCLUÍDA\033[0m"
  fi
}

# Loop principal
while true; do
  mostrar_menu

  # Ler a escolha do usuário
  read -p "DIGITE O NÚMERO DA OPÇÃO DESEJADA: " choice

  case $choice in
    1)
      # Opção 1: Atualizar o sistema
      bash -c "$(wget https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/update_system.sh -O -)"
      tarefa_concluida=true
      ;;
    2)
      # Opção 2: Instalar Ubuntu Restricted Extras
      bash -c "$(wget https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/install_ubuntu_restricted_extras.sh -O -)"
      tarefa_concluida=true
      ;;
    3)
      # Opção 3: Instalar Fontes Microsoft, Htop, IPcalc, Gparted, Neofetch, FFmpeg e Habilitar x86
      bash -c "$(wget https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/install_fonts_microsoft.sh -O -)"
      bash -c "$(wget https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/install_htop.sh -O -)"
      bash -c "$(wget https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/install_ipcalc.sh -O -)"
      bash -c "$(wget https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/install_gparted.sh -O -)"
      bash -c "$(wget https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/install_neofetch.sh -O -)"
      bash -c "$(wget https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/install_ffmpeg.sh -O -)"
      bash -c "$(wget https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/enable_x86.sh -O -)"
      tarefa_concluida=true
      ;;
    4)
      # Opção 4: Instalar Git
      bash -c "$(wget https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/install_git.sh -O -)"
      tarefa_concluida=true
      ;;
    5)
      # Opção 5: Instalar Virt-Manager
      bash -c "$(wget https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/install_virt_manager.sh -O -)"
      tarefa_concluida=true
      ;;
    6)
      # Opção 6: Instalar VirtualBox
      bash -c "$(wget https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/install_virtualbox.sh -O -)"
      tarefa_concluida=true
      ;;
    7)
      # Opção 7: Instalar Google Chrome
      bash -c "$(wget https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/install_google_chrome.sh -O -)"
      tarefa_concluida=true
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
