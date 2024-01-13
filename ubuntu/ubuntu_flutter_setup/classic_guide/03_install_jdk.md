# 3. Install JDK

## A. Install SDKMAN

```bash
# Remove any version of java installed
sudo apt purge -y openjdk*

```

```bash
sudo apt install -y curl

```

```bash
curl -s "https://get.sdkman.io" | bash

```

```bash
source "$HOME/.sdkman/bin/sdkman-init.sh"

```

```bash
sdk version

```



## B. Install specific version jdk

```bash
sdk list java

```

```bash
sdk install java 8.0.302-open

```

```bash
sdk install java 11.0.12-open

```

```bash
# Checking which java version is selected in the system
sdk current java

```

```bash
source ~/.bashrc

```



## X. This part is already present in "1_bashrc_config.md"

```bash
# Switching installed java versions
echo '' >> ~/.bashrc
echo '### Dev ###' >> ~/.bashrc
echo 'alias jdk8="sdk default java 8.0.302-open"' >> ~/.bashrc
echo 'alias jdk11="sdk default java 11.0.12-open"' >> ~/.bashrc

```

```bash
source ~/.bashrc

```

