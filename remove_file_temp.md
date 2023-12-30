# Remove File Temp
```
#Atualização do sistema
sudo apt udpate && sudo apt upgrade -y

#Limpando a Lixeira
sudo rm -rf /home/$USER/.local/share/Trash/files/*

#Limpando a pasta temp
sudo rm -rf /var/temp/*

#Exclusão de cache inúteis do sistema
sudo apt clean -y

#Exclusão de programas que não estão sendo mais utilizados pelo sistema
sudo apt autoremove -y

#Exclusão de arquivos duplicados
sudo apt autoclean -y

#Resolve pacotes quebrados
sudo dpkg --configure -a
```