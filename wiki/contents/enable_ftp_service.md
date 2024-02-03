
&nbsp;

## Install FTP Service - Fedora
```bash
sudo dnf install -y vsftpd

```

* Configure o vsftpd - Fedora
```bash
sudo nano /etc/vsftpd/vsftpd.conf

```

* Certifique-se de que as seguintes linhas estão configuradas da seguinte maneira (se não existirem, adicione-as):
```bash
anonymous_enable=NO
local_enable=YES
write_enable=YES
chroot_local_user=YES

```

* Restart FTP Service
```bash
sudo systemctl restart vsftpd

```

* Firewall Configuration
```bash
sudo firewall-cmd --permanent --add-service=ftp
sudo firewall-cmd --reload

```


&nbsp;

## Install FTP Service - Ubuntu
Certifique-se de que o vsftpd está instalado. Se não estiver, você pode instalá-lo usando o seguinte comando no terminal:
```bash
sudo apt install -y vsftpd

```

* Configure o vsftpd - Ubuntu
Abra o arquivo de configuração do vsftpd em um editor de texto. Por exemplo:
```bash
sudo nano /etc/vsftpd.conf

```

* Certifique-se de que as seguintes linhas estão configuradas da seguinte maneira (se não existirem, adicione-as):

```bash
write_enable=YES
local_umask=022
chroot_local_user=YES

```

* Reinicie o vsftpd:
Reinicie o serviço para aplicar as alterações:
```bash
sudo systemctl restart vsftpd

```

## Ajuste as permissões da pasta:
Certifique-se de que a pasta que você deseja compartilhar tem permissões adequadas para o usuário ftpuser. Você pode fazer isso executando:
```bash
sudo chown -R root:root /home/pxe/iventoy-1.0.19/iso

```

* Agora sua pasta deve estar disponível para acesso via FTP usando o usuário e senha que você criou. Certifique-se de abrir a porta 22 no seu firewall, se estiver em uso, para permitir conexões FTP. Lembre-se de que o FTP não é um protocolo seguro, portanto, é aconselhável usar SFTP (Secure FTP) se a segurança for uma preocupação.