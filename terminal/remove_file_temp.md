# Remove File Temp

```bash
# ATUALIZANDO O SISTEMA
sudo apt udpate
sudo apt upgrade -y
sudo apt full-upgrade -y

# LIMPANDO A LIXEIRA
sudo rm -rf /home/$USER/.local/share/Trash/files/*

# LIMPANDO A PASTA TEMP
sudo rm -rf /var/temp/*

# EXCLUSÃO DE CACHE INÚTEIS DO SISTEMA
sudo apt clean -y

# EXCLUSÃO DE PACOTES QUE NÃO ESTÃO SENDO MAIS UTILIZADOS PELO SISTEMA
sudo apt autoremove -y

# EXCLUSÃO DE ARQUIVOS DUPLICADOS
sudo apt autoclean -y

# RESOLVENDO PACOTES QUEBRADOS
sudo dpkg --configure -a

```
