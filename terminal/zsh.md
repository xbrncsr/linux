

* FONTE:
* <https://youtu.be/5i3TpDR8muU?si=uhvlcLJt0Iv-xHow>
* <https://gist.github.com/luizomf/1fe6c67f307fc1df19e58f224134dc8f>
* <https://youtu.be/Y769Tn7DYiQ?si=TiP558krkrEKuW-X>

## Instalando ZSH- Fedora

```bash
sudo dnf install -y zsh

```

## Instalando ZSH - Ubuntu
```bash
sudo apt install -y zsh

```


#### Mudando shell padrão para ZSH

```bash
chsh -s /bin/zsh

```


#### Install Oh my ZSH

* FONTE:
* <https://ohmyz.sh/>

```bash
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

```


#### Instalar Zsh Autosuggestions

* FONTE:
* <https://github.com/zsh-users/zsh-autosuggestions>

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

```

#### Instalar Zsh Syntax Highlighting

* FONTE:
* <https://github.com/zsh-users/zsh-syntax-highlighting>
```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

```


#### Mudar plugins

* plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

```bash
sudo nano ~/.zshrc

```


#### Configurando temas

* Na linha ZSH_THEME="XXXX"

```bash
sudo nano ~/.zshrc

```


#### Font optional

* FONTE:
* <https://github.com/pdf/ubuntu-mono-powerline-ttf>

```BASH
mkdir -p ~/.fonts
git clone https://github.com/pdf/ubuntu-mono-powerline-ttf.git ~/.fonts/ubuntu-mono-powerline-ttf
fc-cache -vf

```

```bash
sudo reboot now

```



