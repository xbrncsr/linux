# Permissões HD extra

## 1 - Abra o terminal


## 2 - Identifique a partição do seu segundo HD usando o comando:

```bash
sudo fdisk -l

```

* Encontre a entrada correspondente ao seu HD, que pode ser algo como *"/dev/sdaX"*, onde *"X"* é o número da partição.


## 3 - Crie um ponto de montagem para o seu HD:

```bash
sudo mkdir /mnt/sdaX

```


## 4 - Abra o arquivo *"/etc/fstab"* em um editor de texto (por exemplo, usando o comando sudo nano /etc/fstab).


## 5 - Adicione uma linha ao arquivo fstab para montar automaticamente o HD sem solicitar senha de root. Substitua *"/dev/sdaX"* pelo caminho da sua partição e *"/mnt/sdaX"* pelo ponto de montagem criado anteriormente:

```bash
/dev/sdaX   /mnt/sdaX   ext4   defaults,user   0   0

```


## 6 - Salve e feche o arquivo.

Monte o HD usando o comando:

```bash
sudo mount -a

```

* Agora, o seu segundo HD deve ser montado automaticamente em *"/mnt/sdaX"* durante a inicialização, e você poderá acessá-lo sem a necessidade de senha de root. Lembre-se de substituir *"X"* pelos valores específicos da sua configuração.

* fonte:
<https://chat.openai.com/share/733f0029-fc36-48e6-9ea7-9e2cebf28662>
