# After install Ubuntu 22.04 LTS

## 1 - Update
```
sudo apt update && sudo apt upgrade -y && sudo apt full-upgrade -y
```

```
snap-store --quit && sudo snap refresh snap-store
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

```
```

