# 5. **Install Flutter**
<details><summary>A. Install Flutter</summary>

```bash
sudo apt install -y clang cmake ninja-build pkg-config libgtk-3-dev liblzma-dev

```

```bash
cd /home/$USER/ && mkdir _devprograms
cd _devprograms && git clone https://github.com/flutter/flutter.git -b stable

```
</details><br><br>


<details><summary>X. This part is already present in "1_bashrc_config.md"</summary>

```bash
echo 'export FLUTTER_HOME=/home/$USER/_devprograms/flutter' >> ~/.bashrc
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

