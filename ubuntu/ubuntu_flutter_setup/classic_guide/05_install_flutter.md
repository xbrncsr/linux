# 5. Install Flutter

## A. Install Flutter

```bash
sudo apt install -y clang cmake ninja-build pkg-config libgtk-3-dev liblzma-dev

```

```bash
cd /home/$USER/ && mkdir _devprograms
cd _devprograms && git clone https://github.com/flutter/flutter.git -b stable

```



## X. This part is already present in "1_bashrc_config.md"

```bash
echo 'export FLUTTER_HOME=/home/$USER/_devprograms/flutter' >> ~/.bashrc
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

