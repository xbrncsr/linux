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
* Não reinicie ou desligue o sistema a pós a instalação, abra o terminal como root

```bash
cryptsetup luksOpen /dev/sdaX cryptdata

```

```bash
ls /dev/mapper

```

```bash
mount -o subvolid=5,defaults,compress=zstd:1,discard=async /dev/mapper/data-root /mnt

```

```bash
ls /mnt

```

```bash
ls /mnt/home

```

```bash
btrfs subvolume list /mnt

```

```bash
btrfs subvolume create /mnt/@

```

```bash
mv /mnt/* /mnt/@/

```

```bash
ls /mnt

```

```bash
btrfs subvolume list /mnt

```

```bash
btrfs subvolume create /mnt/@home

```

```bash
mv /mnt/@/home/* /mnt/@home/

```

```bash
ls -a /mnt/@home

```

```bash
btrfs subvolume list /mnt

```

```bash
nano /mnt/@/etc/fstab

```

* Na ultima linha: UUID, logo após "defaults": defaults,subvol=@,compress=zstd:1,discard=async
* Copie toda a linha cima e cole na linha abaixo, mudando somente "/home e @home": defaults,subvol=@home,compress=zstd:1,discard=async

```bash
nano /mnt/@/etc/crypttab

```

* Na primeira linha acrecente:

```bash
,discard

```

```bash
nano /mnt/@/etc/kernelstub/configuration

```

* Em user, acrescente  logo abaixo de "splash",

```bash
"rootflags=subvol=@"

```

```bash
mount /dev/sda1 /mnt/@/boot/efi

```

```bash
nano /mnt/@/boot/efi/loader/entries/Pop_OS-current.conf

```

* Logo após "splash" acrescente:

```bash
rootflags=subvol=@

```

```bash
nano /mnt/@/boot/efi/loader/loader.conf

```

* Acrescente na ultima linha:

```bash
timeout 3

```

```bash
cd /

```

```bash
umount -l /mnt

```

```bash
mount -o subvol=@,defaults,compress=zstd:1,discard=async /dev/mapper/data-root /mnt

```

```bash
ls /mnt

```

```bash
for i in /dev /dev/pts /proc /sys /run; do mount -B $i /mnt$; done

```

```bash
chroot /mnt

```

```bash
mount -av

```

```bash
update-initramfs -c -k all

```

## Reinicie o sistema

```bash
sudo mount -av

```

```bash
sudo mount -v | grep /dev/mapper

```

```bash
sudo swapon

```

```bash
sudo btrfs filesystem show /

```

```bash
sudo btrfs subvolume list /

```

#### Habilite fstrim

```bash
sudo systemctl enable fstrim.timer

```

```bash
cat /etc/lvm/lvm.conf | grep issue_discards

```

#### Atualize o sistema

```bash
sudo apt update

```

```bash
sudo apt upgrade -y && sudo apt full-upgrade -y && sudo apt autoremove --purge

```

```bash
sudo apt autoclean

```

```bash
flatpak update

```

```bash
sudo reboot now

```

* No vídeo fonte, esta parte começa no minuto: 33:50 configurando timeshift








