#linux #ubuntu 

&nbsp;
## 1 - Umount disc

```bash
sudo umount /dev/sdX

```

&nbsp;
## 2 - Formatting in GPT

* Checking if the partition is GTP
```bash
sudo gdisk -l /dev/sdX

``` 

* Convert the partition to GPT
```bash
sudo gdisk /dev/sdX

```
* o = Convert to GTP
* w = Write change

&nbsp;
## 3 - Formatting in MBR

* Checking if the partition is MBR
```bash
sudo fdisk -l

```

* Convert the partition to MBR
```bash
sudo fdisk /dev/sdX

```

* d = To delete a partition
* n = To create a new partition
* p = Create a primary partition
* w = Write change

* Formatting the disk drive
```bash
sudo mkfs.vfat /dev/sdX

```

&nbsp;
## 4 - Mounting the disk drive

* Create Mount Point
```bash
sudo mkdir /mnt/sdX

```

* Mount disc
```bash
sudo mount /dev/sdX /mnt/sdX

```

* Check Status mount
```bash
df -h

```

* (Optional) Automatic Mounting at Boot
```bash
sudo nano /etc/fstab

```

* Add the line
```bash
/dev/sdX   /mnt/sdX   ext4   defaults   0   2

```

&nbsp;
## 5 - Accessing the disk drive

```bash
cd /mnt/sdX

```