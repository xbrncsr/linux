# Habilitando e Configurando SSH

## 2 - CONFIGURANDO - SSH SERVER

* FONTE: <https://youtu.be/1ENAmcUst1Q?si=UnFO871t2xQdA49V>

#### a - Instalar SSH Server

```bash
sudo apt install openssh-server

```


#### b - Iniciar SSH Server

```bash
sudo systemctl start ssh

```


#### c - Verificar se de fato iniciou o SSH

```bash
sudo systemctl status ssh

```


#### c - Habilitar para SSH Server iniciar junto com ubuntu

```bash
sudo systemctl enable ssh

```


#### d - Permitir usuário root acessar via SSH

```bash
sudo nano /etc/ssh/sshd_config

```


#### e - Modificar a linha:

```bash
#PermitRootLogin prohibit-password
PermitRootLogin yes

```


#### f - Restart SSH

```bash
sudo systemctl restart ssh

```


#### g - Verificar status novamente

```bash
sudo systemctl status ssh

```


#### h - (opcional) Permitir o tráfego SSH:

```bash
sudo ufw allow 22

```


#### i - acesso ssh:

```bash
ssh user@ip

```

