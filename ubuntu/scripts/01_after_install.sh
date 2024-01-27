#!/bin/bash

# Função para mostrar o menu
mostrar_menu() {
  clear  
  echo "+---------------------------------------------+"
  echo "|       SELECIONE UMA OPÇÃO:                  |"
  echo "|   1. Atualizar o sistema                    |"
  echo "|   2. Instalar Ubuntu Restricted Extras      |"
  echo "|   3. Instalar VLC, GIMP, FFMPEG             |"
  echo "|   4. Instalar Git                           |"
  echo "|   5. Instalar Virt-Manager                  |"
  echo "|   6. Instalar VirtualBox                    |"
  echo "|   7. Instalar Google Chrome                 |"
  echo "|   8. Instalar Steam                         |"
  echo "|   9. Sair                                   |"
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
      bash -c "$(wget https://raw.githubusercontent.com/xbrncsr/linux/main/ubuntu/scripts/update_system.sh -O -)"
      ;;
    2)
      # Opção 2: Instalar Ubuntu Restricted Extras
      bash -c "$(wget https://raw.githubusercontent.com/xbrncsr/linux/main/ubuntu/scripts/install_ubuntu_restricted_extras.sh -O -)"
      ;;
    3)
      # Opção 3. Instalar VLC, GIMP, FFMPEG
      bash -c "$(wget https://raw.githubusercontent.com/xbrncsr/linux/main/ubuntu/scripts/install_vlc_gimp_ffmpeg.sh -O -)"
      
      ;;
    4)
      # Opção 2: Instalar Git
      bash -c "$(wget https://raw.githubusercontent.com/xbrncsr/linux/main/ubuntu/scripts/install_git.sh -O -)"
      
      ;;
    5)
      # Opção 2: Instalar Virt-Manager
      bash -c "$(wget https://raw.githubusercontent.com/xbrncsr/linux/main/ubuntu/scripts/install_virt_manager.sh -O -)"
      
      ;;
    6)
      # Opção 2: Instalar VirtualBox
      bash -c "$(wget https://raw.githubusercontent.com/xbrncsr/linux/main/ubuntu/scripts/install_virtualbox.sh -O -)"
      
      ;;
    7)
      # Opção 2: Instalar Google Chrome
      bash -c "$(wget https://raw.githubusercontent.com/xbrncsr/linux/main/ubuntu/scripts/install_google_chrome.sh -O -)"
      
      ;;
    8)
      # Opção 2: Instalar Steam
      bash -c "$(wget https://raw.githubusercontent.com/xbrncsr/linux/main/ubuntu/scripts/install_steam.sh -O -)"
      
      ;;
    9)
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
