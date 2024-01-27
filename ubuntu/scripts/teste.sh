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

# Função para instalar e verificar a conclusão
instalar_opcao() {
  local numero_opcao=$1
  local url=$2
  local nome_opcao=$3

  if bash -c "$(wget $url -O -)" 2>&1; then
    opcoes_concluidas+=("$numero_opcao - $nome_opcao")
  else
    opcoes_nao_concluidas+=("$numero_opcao - $nome_opcao")
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
      instalar_opcao "1" "https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/update_system.sh" "Atualizar o sistema"
      ;;
    2)
      # Opção 2: Instalar Ubuntu Restricted Extras
      instalar_opcao "2" "https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/install_ubuntu_restricted_extras.sh" "Instalar Ubuntu Restricted Extras"
      ;;
    3)
      # Opção 3: Instalar Fontes Microsoft, Htop, IPcalc, Gparted, Neofetch, FFmpeg e Habilitar x86
      instalar_opcao "3.1" "https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/install_fonts_microsoft.sh" "Instalar Fontes Microsoft"
      instalar_opcao "3.2" "https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/install_htop.sh" "Instalar Htop"
      instalar_opcao "3.3" "https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/install_ipcalc.sh" "Instalar IPCalc"
      instalar_opcao "3.4" "https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/install_gparted.sh" "Instalar Gparted"
      instalar_opcao "3.5" "https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/install_neofetch.sh" "Instalar Neofetch"
      instalar_opcao "3.6" "https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/install_ffmpeg.sh" "Instalar FFmpeg"
      instalar_opcao "3.7" "https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/enable_x86.sh" "Habilitar x86"
      ;;
    4)
      # Opção 4: Instalar Git
      instalar_opcao "4" "https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/install_git.sh" "Instalar Git"
      ;;
    5)
      # Opção 5: Instalar Virt-Manager
      instalar_opcao "5" "https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/install_virt_manager.sh" "Instalar Virt-Manager"
      ;;
    6)
      # Opção 6: Instalar VirtualBox
      instalar_opcao "6" "https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/install_virtualbox.sh" "Instalar VirtualBox"
      ;;
    7)
      # Opção 7: Instalar Google Chrome
      instalar_opcao "7" "https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/install_google_chrome.sh" "Instalar Google Chrome"
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
