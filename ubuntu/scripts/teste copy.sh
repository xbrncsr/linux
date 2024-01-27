#!/bin/bash

# Função para mostrar o menu
mostrar_menu() {
  zenity --info --title="Menu de Opções" --text="
SELECIONE UMA OPÇÃO:

1. Atualizar o sistema
2. Instalar Ubuntu Restricted Extras
3. Instalar Fontes Microsoft, Htop, IPCalc, Gparted, Neofetch, FFmpeg e Habilitar x86
4. Instalar Git
5. Instalar Virt-Manager
6. Instalar VirtualBox
7. Instalar Google Chrome
8. Sair"
}

# Loop principal
while true; do
  mostrar_menu

  # Ler a escolha do usuário
  choice=$(zenity --entry --title="Escolha a Opção" --text="Digite o número da opção desejada:")

  case $choice in
    1)
      # Opção 1: Atualizar o sistema
      zenity --info --title="Atualizando o Sistema" --text="Atualizando o sistema..."
      bash -c "$(wget https://raw.githubusercontent.com/xbrncsr/linux/main/ubuntu/scripts/script_files/update_system.sh -O -)"
      ;;
    2)
      # Opção 2: Instalar Ubuntu Restricted Extras
      zenity --info --title="Instalando Ubuntu Restricted Extras" --text="Instalando Ubuntu Restricted Extras..."
      bash -c "$(wget https://raw.githubusercontent.com/xbrncsr/linux/main/ubuntu/scripts/script_files/install_ubuntu_restricted_extras.sh -O -)"
      ;;
    3)
      # Opção 3: Instalar Fontes Microsoft, Htop, IPcalc, Gparted, Neofetch, FFmpeg e Habilitar x86
      zenity --info --title="Instalando Pacotes Extras" --text="Instalando pacotes extras..."
      bash -c "$(wget https://raw.githubusercontent.com/xbrncsr/linux/main/ubuntu/scripts/script_files/install_fonts_microsoft.sh -O -)"
      bash -c "$(wget https://raw.githubusercontent.com/xbrncsr/linux/main/ubuntu/scripts/script_files/install_htop.sh -O -)"
      bash -c "$(wget https://raw.githubusercontent.com/xbrncsr/linux/main/ubuntu/scripts/script_files/install_ipcalc.sh -O -)"
      bash -c "$(wget https://raw.githubusercontent.com/xbrncsr/linux/main/ubuntu/scripts/script_files/install_gparted.sh -O -)"
      bash -c "$(wget https://raw.githubusercontent.com/xbrncsr/linux/main/ubuntu/scripts/script_files/install_neofetch.sh -O -)"
      bash -c "$(wget https://raw.githubusercontent.com/xbrncsr/linux/main/ubuntu/scripts/script_files/install_ffmpeg.sh -O -)"
      bash -c "$(wget https://raw.githubusercontent.com/xbrncsr/linux/main/ubuntu/scripts/script_files/enable_x86.sh -O -)"
      ;;
    4)
      # Opção 4: Instalar Git
      zenity --info --title="Instalando Git" --text="Instalando Git..."
      bash -c "$(wget https://raw.githubusercontent.com/xbrncsr/linux/main/ubuntu/scripts/script_files/install_git.sh -O -)"
      ;;
    5)
      # Opção 5: Instalar Virt-Manager
      zenity --info --title="Instalando Virt-Manager" --text="Instalando Virt-Manager..."
      bash -c "$(wget https://raw.githubusercontent.com/xbrncsr/linux/main/ubuntu/scripts/script_files/install_virt_manager.sh -O -)"
      ;;
    6)
      # Opção 6: Instalar VirtualBox
      zenity --info --title="Instalando VirtualBox" --text="Instalando VirtualBox..."
      bash -c "$(wget https://raw.githubusercontent.com/xbrncsr/linux/main/ubuntu/scripts/script_files/install_virtualbox.sh -O -)"
      ;;
    7)
      # Opção 7: Instalar Google Chrome
      zenity --info --title="Instalando Google Chrome" --text="Instalando Google Chrome..."
      bash -c "$(wget https://raw.githubusercontent.com/xbrncsr/linux/main/ubuntu/scripts/script_files/install_google_chrome.sh -O -)"
      ;;
    8)
      # Opção 8: Sair do script
      break
      ;;
    *)
      # Opção inválida
      zenity --error --title="Opção Inválida" --text="Opção inválida, tente novamente!"
      ;;
  esac

  # Pausa para o usuário ler a mensagem antes de limpar a tela
  zenity --info --title="Pressione Enter para Continuar" --text="Pressione Enter para continuar..."
done
