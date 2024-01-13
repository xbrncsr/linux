# After install Fedora 39

## Atualizando os pacotes do sistema !

```bash
sudo dnf update
```

```bash
sudo dnf upgrade -y
```

## Traduzindo Fedora !

```bash
sudo dnf install system-config-language -y
```

```bash
system-config-language
```

## Add RPM Fusion Repository !

```bash
sudo dnf install -y https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
```

## Plugins Codecs Extras !

```bash
sudo dnf groupupdate core -y
```

```bash
sudo dnf groupupdate multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin -y
```

```bash
sudo dnf groupupdate sound-and-video -y
```

```bash
sudo dnf install -y unzip p7zip p7zip-plugins unrar ffmpeg htop ipcalc gparted gnome-tweaks samba neofetch timeshift
```

```bash
sudo dnf install -y https://downloads.sourceforge.net/project/mscorefonts2/rpms/msttcore-fonts-installer-2.6-1.noarch.rpm
```

