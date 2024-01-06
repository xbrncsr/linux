# After install Ubuntu 22.04 LTS

## 0 - Script After install
```
bash -c "$(wget https://raw.githubusercontent.com/cesarbrunoms/linux/main/ubuntu/00_after_install.sh -O -)"
```

## 1 - Update
```
sudo apt update
sudo apt upgrade -y
sudo apt full-upgrade -y
```

```
sudo killall snap-store
sudo snap refresh
```

## 2 - Install Extras
```
sudo apt install -y ubuntu-restricted-extras
```

```
sudo dpkg --add-architecture i386
```

```
sudo apt install -y ipcalc gparted gdebi
```

```
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'
```
