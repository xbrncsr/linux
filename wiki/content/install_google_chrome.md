#linux #ubuntu 

&nbsp;

## Install Google Chrome - Fedora
```bash
sudo dnf config-manager --set-enabled google-chrome

```

```bash
sudo dnf update

```

```bash
sudo dnf install -y google-chrome-stable

```

## Install Google Chrome - Ubuntu
```bash
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

```

```bash
sudo gdebi google-chrome-stable_current_amd64.deb

```

```bash
rm google-chrome-stable_current_amd64.deb
```