# **1. Bashrc**
<details><summary>Config bashrc</summary>  

```bash
echo '' >> ~/.bashrc
echo '### Dev ###' >> ~/.bashrc
echo 'alias jdk8="sdk default java 8.0.302-open"' >> ~/.bashrc
echo 'alias jdk11="sdk default java 11.0.12-open"' >> ~/.bashrc
echo '' >> ~/.bashrc
echo 'export ANDROID_HOME=/home/$USER/Android/Sdk' >> ~/.bashrc
echo 'export ANDROID_SDK_ROOT=/home/$USER/Android/Sdk' >> ~/.bashrc
echo 'export FLUTTER_HOME=/home/$USER/_devprograms/flutter' >> ~/.bashrc
echo '' >> ~/.bashrc
echo 'export PATH=$PATH:$ANDROID_HOME/tools' >> ~/.bashrc
echo 'export PATH=$PATH:$ANDROID_HOME/platform-tools' >> ~/.bashrc
echo 'export PATH=$PATH:$FLUTTER_HOME/bin' >> ~/.bashrc
echo 'export PATH=$PATH:$HOME/.pub-cache/bin' >> ~/.bashrc

```  
</details><br><br>


