# 5. **Install Flutter**
<details><summary>A. Install Flutter</summary>

```bash
sudo apt install -y clang cmake ninja-build pkg-config libgtk-3-dev liblzma-dev

```

```bash
sudo snap install flutter --classic

```
</details><br><br>


<details><summary>X. This part is already present in "1_bashrc_config.md"</summary>

```bash
echo 'export FLUTTER_HOME=/home/$USER/snap/flutter/common/flutter' >> ~/.bashrc
echo 'export PATH=$PATH:$FLUTTER_HOME/bin' >> ~/.bashrc

```

```bash
source ~/.bashrc

```
</details><br><br>


<details><summary>B. Mude para JDK11</summary>

```bash
jdk11

```

```bash
flutter doctor --android-licenses

```
</details><br><br>

