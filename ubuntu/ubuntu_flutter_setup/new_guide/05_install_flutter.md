# 5. Install Flutter

## A. Install Flutter

```bash
sudo apt install -y clang cmake ninja-build pkg-config libgtk-3-dev liblzma-dev

```

```bash
sudo snap install flutter --classic

```



## X. This part is already present in "1_bashrc_config.md"

```bash
echo 'export FLUTTER_HOME=/home/$USER/snap/flutter/common/flutter' >> ~/.bashrc
echo 'export PATH=$PATH:$FLUTTER_HOME/bin' >> ~/.bashrc

```

```bash
source ~/.bashrc

```

## B. Mude para JDK11

```bash
jdk11

```

```bash
flutter doctor --android-licenses

```

