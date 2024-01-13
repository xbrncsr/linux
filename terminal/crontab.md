<h1>Crontab</h1>

<h2>Status Cron</h2>

```shell
/etc/init.d/cron status

```

<h2>Editando Crontab</h2>

```shell
sudo nano /etc/crontab

```

```shell
  10 18 * * *  root  /home/user/documents/scripts/auto_update.sh
```

<h2>Script pré configurado</h2>

```shell
#!/bin/bash

# ATUALIZANDO O SISTEMA
sudo apt udpate
sudo apt upgrade -y
sudo apt full-upgrade -y

# LIMPANDO A LIXEIRA
sudo rm -rf /home/$USER/.local/share/Trash/files/*

# LIMPANDO A PASTA TEMP
sudo rm -rf /var/temp/*

# EXCLUSÃO DE CACHE INÚTEIS DO SISTEMA
sudo apt clean -y

# EXCLUSÃO DE PACOTES QUE NÃO ESTÃO SENDO MAIS UTILIZADOS PELO SISTEMA
sudo apt autoremove -y

# EXCLUSÃO DE ARQUIVOS DUPLICADOS
sudo apt autoclean -y

# RESOLVENDO PACOTES QUEBRADOS
sudo dpkg --configure -a

```

<h2>Resolvendo permissões com chmod</h2>

```shell
sudo chmod 777 auto_update.sh

```
