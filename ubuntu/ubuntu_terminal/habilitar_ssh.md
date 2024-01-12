<h1>Habilitando e Configurando SSH</h1>

<h2>2 - CONFIGURANDO - SSH SERVER</h2> <br>
FONTE: https://youtu.be/1ENAmcUst1Q?si=UnFO871t2xQdA49V

<h3>a - Instalar SSH Server</h3>

```
sudo apt install openssh-server

```


<h3>b - Iniciar SSH Server</h3>

```
sudo systemctl start ssh

```


<h3>c - Verificar se de fato iniciou o SSH</h3>

```
sudo systemctl status ssh

```


<h3>c - Habilitar para SSH Server iniciar junto com ubuntu</h3>

```
sudo systemctl enable ssh

```


<h3>d - Permitir usuário root acessar via SSH</h3>

```
sudo nano /etc/ssh/sshd_config

```


<h3>e - Modificar a linha:</h3>

```
#PermitRootLogin prohibit-password
PermitRootLogin yes

```


<h3>f - Restart SSH</h3>

```
sudo service ssh restart

```


<h3>g - Verificar status novamente</h3>

```
sudo systemctl status ssh

```


<h3>h - (opcional) Permitir o tráfego SSH:</h3>

```
sudo ufw allow 22

```


<h3>i - acesso ssh:</h3>

```
ssh user@ip

```
<br><br>

<h2>3 - GERENCIANDO USUÁRIO</h2> <br>
FONTE: https://youtu.be/zU5sisowCgw?si=USWfUp_YICfoMDuy

<h3>a - Criando usuário:</h3>

```
sudo adduser UserName

```


<h3>b - Adicionando nosso usuário ao grupo sudo:</h3>

```
sudo adduser orthanc sudo

```

