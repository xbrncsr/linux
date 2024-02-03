## Config DNF Speed
```bash
sudo nano /etc/dnf/dnf.conf

```

```bash
max_parallel_downloads=10
fastestmirror=True

```

## Enable DNF autoupdate
```bash
sudo dnf install dnf-automatic -y

```

```bash
sudo nano /etc/dnf/automatic.conf

```

```bash
sudo systemctl enable --now dnf-automatic.timer

```