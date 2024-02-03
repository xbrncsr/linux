
&nbsp;

```bash
apt update && apt upgrade -y

```

```bash
sudo apt install -y cifs-utils samba

```

```bash
sudo nano ~/.smbcredentials

```

```bash
username=bruno
password=absemsau*

```

```bash
sudo chmod 600 ~/.smbcredentials

```

```bash
wget https://github.com/ventoy/PXE/releases/download/v1.0.19/iventoy-1.0.19-linux-free.tar.gz

```

```bash
tar -xzf iventoy-1.0.19-linux-free.tar.gz

```

```bash
sudo nano /etc/fstab

```

```bash
//10.11.12.3/isos /home/pxe/iventoy-1.0.19/iso cifs credentials=/home/pxe/.smbcredentials 0 0

```

```bash
sudo mount -a

```

```bash
sudo ./iventoy.sh -R start

```