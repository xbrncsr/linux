#!/bin/bash

# Função para mostrar o menu
mostrar_menu() {
  choice=$(zenity --list \
    --title="Menu de Opções" \
    --text="Selecione uma ou mais opções:" \
    --column="Número" --column="Opção" \
    TRUE "Atualizar o sistema" \
    FALSE "Instalar Ubuntu Restricted Extras" \
    FALSE "Instalar Fontes Microsoft, Htop, IPCalc, Gparted, Neofetch, FFmpeg e Habilitar x86" \
    FALSE "Instalar Git" \
    FALSE "Instalar Virt-Manager" \
    FALSE "Instalar VirtualBox" \
    FALSE "Instalar Google Chrome" \
    FALSE "Sair")

  # Verificar se o usuário cancelou a seleção
  if [ $? -ne 0 ]; then
    echo "Saindo do script..."
    exit 0
  fi
}

# Loop principal
while true; do
  mostrar_menu

  case $choice in
    "Atualizar o sistema")
      # Opção 1: Atualizar o sistema
      zenity --info --title="Atualizando o Sistema" --text="Atualizando o sistema..."
      bash -c "$(wget https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/update_system.sh -O -)"
      ;;
    "Instalar Ubuntu Restricted Extras")
      # Opção 2: Instalar Ubuntu Restricted Extras
      zenity --info --title="Instalando Ubuntu Restricted Extras" --text="Instalando Ubuntu Restricted Extras..."
      bash -c "$(wget https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/install_ubuntu_restricted_extras.sh -O -)"
      ;;
    "Instalar Fontes Microsoft, Htop, IPCalc, Gparted, Neofetch, FFmpeg e Habilitar x86")
      # Opção 3: Instalar Fontes Microsoft, Htop, IPcalc, Gparted, Neofetch, FFmpeg e Habilitar x86
      zenity --info --title="Instalando Pacotes Extras" --text="Instalando pacotes extras..."
      bash -c "$(wget https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/install_fonts_microsoft.sh -O -)"
      bash -c "$(wget https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/install_htop.sh -O -)"
      bash -c "$(wget https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/install_ipcalc.sh -O -)"
      bash -c "$(wget https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/install_gparted.sh -O -)"
      bash -c "$(wget https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/install_neofetch.sh -O -)"
      bash -c "$(wget https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/install_ffmpeg.sh -O -)"
      bash -c "$(wget https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/enable_x86.sh -O -)"
      ;;
    "Instalar Git")
      # Opção 4: Instalar Git
      zenity --info --title="Instalando Git" --text="Instalando Git..."
      bash -c "$(wget https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/install_git.sh -O -)"
      ;;
    "Instalar Virt-Manager")
      # Opção 5: Instalar Virt-Manager
      zenity --info --title="Instalando Virt-Manager" --text="Instalando Virt-Manager..."
      bash -c "$(wget https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/install_virt_manager.sh -O -)"
      ;;
    "Instalar VirtualBox")
      # Opção 6: Instalar VirtualBox
      zenity --info --title="Instalando VirtualBox" --text="Instalando VirtualBox..."
      bash -c "$(wget https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/install_virtualbox.sh -O -)"
      ;;
    "Instalar Google Chrome")
      # Opção 7: Instalar Google Chrome
      zenity --info --title="Instalando Google Chrome" --text="Instalando Google Chrome..."
      bash -c "$(wget https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/scripts/script_files/install_google_chrome.sh -O -)"
      ;;
    "Sair")
      # Opção 8: Sair do script
      zenity --info --title="Saindo do Script" --text="Saindo do script..."
      exit 0
      ;;
    *)
      # Opção inválida
      zenity --error --title="Opção Inválida" --text="Opção inválida, tente novamente!"
      ;;
  esac
done
