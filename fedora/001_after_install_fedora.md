# After install Fedora 39

## Atualizando os pacotes do sistema !
```
sudo dnf update
```

```
sudo dnf upgrade -y
```

## Traduzindo Fedora !
```
sudo dnf install system-config-language -y
```

```
system-config-language
```

## Add RPM Fusion Repository !
```
sudo dnf install -y https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
```

## Plugins Codecs Extras !
```
sudo dnf groupupdate core -y
```

```
sudo dnf groupupdate multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin -y
```

```
sudo dnf groupupdate sound-and-video -y
```

```
sudo dnf install -y unzip p7zip p7zip-plugins unrar ffmpeg htop ipcalc gparted gnome-tweaks samba neofetch timeshift
```

```
sudo dnf install -y https://downloads.sourceforge.net/project/mscorefonts2/rpms/msttcore-fonts-installer-2.6-1.noarch.rpm
```

```
```

