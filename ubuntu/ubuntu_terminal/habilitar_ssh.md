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

* ou tente com este script:

```bash
# Caminho para o arquivo de configuração do SSH
ssh_config_file="/etc/ssh/sshd_config"

# Linha original que você deseja substituir
original_line="#PermitRootLogin prohibit-password"

# Nova linha que você deseja adicionar
new_line="PermitRootLogin yes"

# Verifica se o arquivo de configuração existe
if [ -e "$ssh_config_file" ]; then
    # Substitui a linha no arquivo
    sudo sed -i "s/$original_line/$new_line/" "$ssh_config_file"
    echo "Configuração alterada com sucesso!"
else
    echo "Erro: O arquivo de configuração não foi encontrado."
fi

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

