#!/bin/bash

# Função para mostrar o menu
mostrar_menu() {
  clear  
  echo "+---------------------------------------------+"
  echo "|       SELECIONE UMA OPÇÃO SNAP:             |"
  echo "|   1. Corrigindo Snap Store                  |"
  echo "|   2. Instalar AuthPass                      |"
  echo "|   3. Instalar Shotcut                       |"
  echo "|   4. Instalar Spotify                       |"
  echo "|   5. Instalar VSCode                        |"
  echo "|   6. Instalar VLC                           |"
  echo "|   7. Instalar WinBox                        |"
  echo "|   8. Sair                                   |"
  echo "+---------------------------------------------+"

}

# Loop principal
while true; do
  mostrar_menu

  # Ler a escolha do usuário
  read -p "DIGITE O NÚMERO DA OPÇÃO DESEJADA: " choice

  case $choice in
    1)
      # Opção 1: Corrigindo Snap Store
      sudo killall snap-store
      sudo snap refresh
      echo "=====================> [ CORRIGINDO SNAP STORE! ]"
      ;;
    2)
      # Opção 1: Instalar AuthPass
      sudo snap install authpass
      echo "=====================> [ AUTHPASS INSTALADO COM SUCESSO! ]"
      ;;
    3)
      # Opção 2: Instalar Shotcut
      sudo snap install shotcut --classic
      echo "=====================> [ SHOTCUT INSTALADO COM SUCESSO! ]"
      ;;
    4)
      # Opção 2: Instalar Spotify
      sudo snap install spotify
      echo "=====================> [ SPOTIFY INSTALADO COM SUCESSO! ]"
      ;;
    5)
      # Opção 2: Instalar VSCode
      sudo snap install code --classic
      echo "=====================> [ VSCODE INSTALADO COM SUCESSO! ]"
      ;;
    6)
      # Opção 2: Instalar VLC
      sudo snap install vlc
      echo "=====================> [ VLC INSTALADO COM SUCESSO! ]"
      ;;
    7)
      # Opção 2: Instalar WinBox
      sudo snap install winbox
      echo "=====================> [ WINBOX INSTALADO COM SUCESSO! ]"
      ;;    
    8)
      # Opção 3: Sair do script
      break
      ;;
    *)
      # Opção inválida
      echo "OPÇÃO INVÁLIDA. TENTE NOVAMENTE."
      ;;
  esac

  # Pausa para o usuário ler a mensagem antes de limpar a tela
  read -p "PRESSIONE ENTER PARA CONTINUAR..."

done
