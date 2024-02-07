# Install xrdp service

&nbsp;

## Instalar xrdp
```bash
sudo apt install -y xrdp

```


## Editar Configurações do LightDM:
```bash
sudo nano /etc/lightdm/lightdm.conf

```


# Adicione ou edite a seguinte linha no arquivo:
```bash
[SeatDefaults]
xserver-allow-tcp=true

```


## Reinicie o LightDM para aplicar as alterações:
```bash
sudo systemctl restart lightdm

```


## Configurar o Servidor X para Aceitar Conexões Remotas:
* Abra o arquivo de configuração do servidor X em um editor de texto:
```bash
sudo nano /etc/gdm3/custom.conf

```


# Certifique-se de que a seção [security] inclua a linha:
```bash
DisallowTCP=false

```


# Reinicie o serviço XRDP:
```bash
sudo systemctl restart xrdp
