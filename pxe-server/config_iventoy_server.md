
&nbsp;

* SOURCE:
* <https://youtu.be/G5BhQqRLN4A?si=pvfs9sTti-ayiNrG>
* <https://youtu.be/sv0sVLjyPqw?si=e52Jaqw_ungX3yAB>
* <https://github.com/ventoy/PXE/releases>
* <https://expressittechtips.co.uk/iventoy>

## 1 - [[update_system]]

&nbsp;

## 2 -
```bash
sudo apt install -y git net-tools cifs-utils samba

```

&nbsp;

## 3 - Config SMB Credentials
```bash
nano /home/iventoy/.smbcredentials

```

```bash
username=bruno
password=mikrotik

```

```bash
sudo chmod 600 ~/.smbcredentials

```

```bash
sudo systemctl restart smbd

```

```bash
sudo systemctl status smbd

```

&nbsp;
## 4 - Download iVentoy
```bash
wget https://github.com/ventoy/PXE/releases/download/v1.0.19/iventoy-1.0.19-linux-free.tar.gz

```

```bash
tar -xzf iventoy-1.0.19-linux-free.tar.gz

```

```bash
cd iventoy-1.0.19

```

```bash
sudo nano /etc/fstab

```

```bash
//10.11.12.253/iso /home/iventoy/iventoy-1.0.19/iso/ cifs credentials=/home/.smbcredentials 0 0

```

```bash
sudo systemctl restart smbd

```

```bash
sudo systemctl status smbd

```

* Para verificar se tudo ocorreu bem
```bash
sudo mount -a

```

```bash
sudo ./iventoy.sh -R start

```

```bash
ip:26000

```