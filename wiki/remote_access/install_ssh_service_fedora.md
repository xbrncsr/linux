#linux #fedora

&nbsp;

## Install SSH Service - Fedora
```bash
sudo dnf install openssh-server

```

* Start and Enable the SSH Service
```bash
sudo systemctl start sshd
sudo systemctl enable sshd

```

* Allow SSH Through Firewall
```bash
sudo firewall-cmd --permanent --add-service=ssh
sudo firewall-cmd --reload

```

* Verify SSH Status
```bash
sudo systemctl status sshd

```

## Access SSH Server
```bash
ssh user@ip

```