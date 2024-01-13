<h1>Pós isntalação Ubuntu 22.04 LTS</h1>


<h2>1 - Update</h2>

<a href="https://github.com/cesarbrunoms/linux/blob/main/ubuntu/ubuntu_terminal/atualizando_sistema.md" target="_blank">A - Atualizando Sistema</a> <br>

```shell
sudo killall snap-store
sudo snap refresh

```

<h2>2 - Install Extras</h2>

```shell
sudo apt install -y ubuntu-restricted-extras

```

```shell
sudo dpkg --add-architecture i386

```

```shell
sudo apt install -y ipcalc gparted gdebi htop ipcalc ffmpeg neofetch ttf-mscorefonts-installer

```

```shell
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'

```
