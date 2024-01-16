# BTRFS Ubuntu / Pop OS

* FONTE:
* [Pop!_OS 22.04 with btrfs, luks encryption, automatic system snapshots with Timeshift & rollback demo](https://youtu.be/i8HDHAX1RJc?si=k-G9olWcNfBf1Mgh)
* [Pop!_OS 22.04: installation guide with btrfs](https://mutschler.dev/linux/pop-os-btrfs-22-04/)

## 1 - (Opcional) Faça uma instalação limpa do Pop OS para ter um layout de disco, desta maneira vc vera como o Pop OS cria as partições no disco.


## 2 - Descriptografando a partição onde fica a "/" e "/home", no caso: "sdaX"

* Verificar status

```bash
sudo cryptsetup luksDump /dev/sdaX

```

* Descriptografar

```bash
sudo cryptsetup luksOpen /dev/sdaX cryptdata

```

```bash
ls /dev/mapper

```

```bash
sudo pvs

```

```bash
sudo vgs

```

```bash
sudo lvs

```

```bash
sudo cryptsetup luksClose /dev/mapper/data-root

```

```bash
sudo cryptsetup luksClose /dev/mapper/cryptdata

```

```bash
ls /dev/mapper

```

```bash
exit

```

## Abra o instalador do Ubuntu/Pop_OS novamente e refaça a instalação aproveitando o layout do disco, substitua ext4 por btrfs

* No vídeo fonte, esta parte começa no minuto: 10:50
