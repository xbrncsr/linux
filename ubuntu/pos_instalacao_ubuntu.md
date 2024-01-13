# Pós isntalação Ubuntu 22.04 LTS


## 1 - Update

* [A - Atualizando Sistema](https://github.com/cesarbrunoms/linux/blob/main/ubuntu/ubuntu_terminal/atualizando_sistema.md)

```bash
sudo killall snap-store
sudo snap refresh

```

## 2 - Install Extras

```bash
sudo apt install -y ubuntu-restricted-extras

```

```bash
sudo dpkg --add-architecture i386

```

```bash
sudo apt install -y ipcalc gparted gdebi htop ipcalc ffmpeg neofetch ttf-mscorefonts-installer

```

```bash
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'

```
