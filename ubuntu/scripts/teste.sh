#!/bin/bash

# Array para armazenar as opções concluídas
opcoes_concluidas=()
opcoes_nao_concluidas=()

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

  # Mostrar opções não concluídas em vermelho
  if [ ${#opcoes_nao_concluidas[@]} -gt 0 ]; then
    echo -e "\033[31m\nOPÇÕES NÃO CONCLUÍDAS: ${opcoes_nao_concluidas[@]}\033[0m"
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
      if sudo apt udpate
        opcoes_concluidas+=("1")
      else
        opcoes_nao_concluidas+=("1")
      fi
      ;;
    2)
      # Opção 2: Instalar Ubuntu Restricted Extras
      if bash -c "$(wget https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/install_ubuntu_restricted_extras.sh -O -)" 2>&1; then
        opcoes_concluidas+=("2")
      else
        opcoes_nao_concluidas+=("2")
      fi
      ;;
    3)
      # Opção 3: Instalar Fontes Microsoft, Htop, IPcalc, Gparted, Neofetch, FFmpeg e Habilitar x86
      if bash -c "$(wget https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/install_fonts_microsoft.sh -O -)" 2>&1; then
        opcoes_concluidas+=("3")
      else
        opcoes_nao_concluidas+=("3")
      fi
      if bash -c "$(wget https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/install_htop.sh -O -)" 2>&1; then
        opcoes_concluidas+=("Htop")
      else
        opcoes_nao_concluidas+=("Htop")
      fi
      if bash -c "$(wget https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/install_ipcalc.sh -O -)" 2>&1; then
        opcoes_concluidas+=("IPCalc")
      else
        opcoes_nao_concluidas+=("IPCalc")
      fi
      if bash -c "$(wget https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/install_gparted.sh -O -)" 2>&1; then
        opcoes_concluidas+=("Gparted")
      else
        opcoes_nao_concluidas+=("Gparted")
      fi
      if bash -c "$(wget https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/install_neofetch.sh -O -)" 2>&1; then
        opcoes_concluidas+=("Neofetch")
      else
        opcoes_nao_concluidas+=("Neofetch")
      fi
      if bash -c "$(wget https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/install_ffmpeg.sh -O -)" 2>&1; then
        opcoes_concluidas+=("FFmpeg")
      else
        opcoes_nao_concluidas+=("FFmpeg")
      fi
      if bash -c "$(wget https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/enable_x86.sh -O -)" 2>&1; then
        opcoes_concluidas+=("Habilitar x86")
      else
        opcoes_nao_concluidas+=("Habilitar x86")
      fi
      ;;
    4)
      # Opção 4: Instalar Git
      if bash -c "$(wget https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/install_git.sh -O -)" 2>&1; then
        opcoes_concluidas+=("4")
      else
        opcoes_nao_concluidas+=("4")
      fi
      ;;
    5)
      # Opção 5: Instalar Virt-Manager
      if bash -c "$(wget https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/install_virt_manager.sh -O -)" 2>&1; then
        opcoes_concluidas+=("5")
      else
        opcoes_nao_concluidas+=("5")
      fi
      ;;
    6)
      # Opção 6: Instalar VirtualBox
      if bash -c "$(wget https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/install_virtualbox.sh -O -)" 2>&1; then
        opcoes_concluidas+=("6")
      else
        opcoes_nao_concluidas+=("6")
      fi
      ;;
    7)
      # Opção 7: Instalar Google Chrome
      if bash -c "$(wget https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/install_google_chrome.sh -O -)" 2>&1; then
        opcoes_concluidas+=("7")
      else
        opcoes_nao_concluidas+=("7")
      fi
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
