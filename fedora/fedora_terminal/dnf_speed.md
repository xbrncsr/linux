# DNF Speed

```bash
sudo nano /etc/dnf/dnf.conf

```

```bash
#Added for Speed:
fastestmirror=True
max_parallel_downloads=10
defaultyes=True

```

```bash
sudo dnf update

```

```bash
sudo dnf upgrade -y

```

