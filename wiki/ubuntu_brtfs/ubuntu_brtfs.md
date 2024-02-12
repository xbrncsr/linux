# Ubuntu: installation guide with brtfs

* SOURCE:
* <https://youtu.be/yRSElRlp7TQ?si=5KtHbEDbjRxkswFn>
* <https://mutschler.dev/linux/ubuntu-btrfs-20-04/>


## Step 1: Check UEFI mode and open an interactive root shell
```bash
mount | grep efivars

```

# partitioning the disk
```bash
parted /dev/vda

```

```bash
mklabel gpt

```

```bash
mkpart primary 1MiB 513MiB

```

```bash
mkpart primary 513MiB 100%

```

```bash
print

```

```bash
q

```

