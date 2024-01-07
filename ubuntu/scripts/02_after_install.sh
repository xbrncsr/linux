#!/bin/bash

# Função para mostrar o menu
mostrar_menu() {
  clear  
  echo "+---------------------------------------------+"
  echo "|       SELECIONE UMA OPÇÃO:                  |"
  echo "|   1. Atualizar o sistema                    |"
  echo "|   2. Instalar Fontes Microsoft, Htop,       |"
  echo "|   IPCalc, Gparted, Neofetch, FFmpeg e       |"
  echo "|   Habilitar x86                             |"
  echo "|   3. Instalar Git                           |"
  echo "|   4. Instalar Virt-Manager                  |"
  echo "|   5. Instalar VirtualBox                    |"
  echo "|   6. Instalar Google Chrome                 |"
  echo "|   7. Sair                                   |"
  echo "+---------------------------------------------+"

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
      ;;
    2)
      # Opção 2: Instalar Fontes Microsoft, Htop, IPcalc, Gparted, Neofetch, FFmpeg e Habilitar x86
      echo "INSTALANDO FONTES MICROSOFT"
      sudo apt install -y ttf-mscorefonts-installer
      echo "FONTES MICROSOFT INSTALADAS COM SUCESSO!"
      echo "INSTALANDO HTOP"
      sudo apt install -y htop
      echo "HTOP INSTALADO COM SUCESSO!"
      echo "INSTALANDO IPCALC"
      sudo apt install -y ipcalc
      echo "IPCALC INSTALADO COM SUCESSO!"
      echo "INSTALANDO GPARTED"
      sudo apt install -y gpaterd
      echo "GPARTED INSTALADO COM SUCESSO!"
      echo "INSTALANDO NEOFETCH"
      sudo apt install -y neofetch
      echo "NEOFETCH INSTALADO COM SUCESSO!"
      echo "INSTALANDO FFMPEG"
      sudo apt install -y ffmpeg
      echo "FFMPEG INSTALADO COM SUCESSO!"
      echo "HABILITANDO X86"
      sudo dpkg --add-architecture i386
      echo "=====================> [ X86 HABILITADO COM SUCESSO! ]"
      ;;
    3)
      # Opção 2: Instalar Git
      bash -c "$(wget https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/install_git.sh -O -)"
      
      ;;
    4)
      # Opção 2: Instalar Virt-Manager
      bash -c "$(wget https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/install_virt_manager.sh -O -)"
      
      ;;
    5)
      # Opção 2: Instalar VirtualBox
      bash -c "$(wget https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/install_virtualbox.sh -O -)"
      
      ;;
    6)
      # Opção 2: Instalar Google Chrome
      bash -c "$(wget https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/install_google_chrome.sh -O -)"
      
      ;;
    7)
      # Opção 3: Sair do script
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
