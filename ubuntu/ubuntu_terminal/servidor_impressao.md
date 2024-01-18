# Servidor de Impressão

[1 - Atualizando Sistema](https://github.com/cesarbrunoms/linux/blob/main/ubuntu/ubuntu_terminal/atualizando_sistema.md)


&nbsp;
&nbsp;


2 - Instalando Cups
```bash
sudo apt install -y cups

```


&nbsp;
&nbsp;


3 - Configurando Cups
```bash
sudo systemctl start cups
sudo cupsctl --remote-any
sudo systemctl enable cups
sduo systemctl restart cups
sudo systemctl status cups

```