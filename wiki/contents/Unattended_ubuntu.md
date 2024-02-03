* SOURCE:
* <https://youtu.be/o0z8UjU0AJs?si=TcX1mSedEC8hwFrw>
* <https://tonyteaches.tech/ubuntu-automatic-update-tutorial/>

## Install Unattended Upgrades
```bash
sudo apt install -y unattended-upgrades update-notifier-common

```

## Configure Unattended Upgrades
```bash
sudo nano /etc/apt/apt.conf.d/50unattended-upgrades

```

## MOD 1
* (OPTIONAL)
* Atualizações sem supervisão
* MOD 1 terá o reboot automatico
* MOD 1 bom para painéis de senha
```bash
//      "${distro_id}:${distro_codename}-updates";
        "${distro_id}:${distro_codename}-updates";
```

## MOD 2
* MOD 2 configuração mais manual
```bash
//Unattended-Upgrade::Remove-Unused-Kernel-Packages "true";
Unattended-Upgrade::Remove-Unused-Kernel-Packages "true";

```

```bash
//Unattended-Upgrade::Remove-New-Unused-Dependencies "true";
Unattended-Upgrade::Remove-New-Unused-Dependencies "true";

```

```bash
//Unattended-Upgrade::Remove-Unused-Dependencies "false";
Unattended-Upgrade::Remove-Unused-Dependencies "false";

```

```bash
//Unattended-Upgrade::Automatic-Reboot "false";
Unattended-Upgrade::Automatic-Reboot "true";

```

* Definir horário do reboot
```bash
//Unattended-Upgrade::Automatic-Reboot-Time "02:00";
Unattended-Upgrade::Automatic-Reboot-Time "02:00";

```

## Para aplicar as configurações
```bash
sudo dpkg-reconfigure -plow unattended-upgrades

```

```bash
sudo unattended-upgrades --dry-run --debug

```