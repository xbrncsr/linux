
# zram
* SOURCE:
* <https://www.craftware.info/projects-lists/faster-linux-on-low-memory-using-zram-ubuntu-22-04>
* <https://diolinux.com.br/sistemas-operacionais/pop_os/configurar-a-zram.html>

## Install ZRAM
```bash

sudo apt install -y zram-config zram-tools

```

## Config ZRAM
```bash
sudo nano /etc/default/zramswap

```

```bash
# Mudar as seguintes linhas:
ALGO=zstd
PERCENT=10

```

## Restart ZRAM
```bash
systemctl restart zramswap

```

## Status ZRAM
```bash
sudo dmesg | grep -i zram

```

```bash
systemctl status zramswap

```


