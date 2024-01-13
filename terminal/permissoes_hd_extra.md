<h1>Permissões HD extra</h1>

<h2>1 - Abra o terminal</h2>


<h2>2 - Identifique a partição do seu segundo HD usando o comando:</h2>

```shell
sudo fdisk -l

```

Encontre a entrada correspondente ao seu HD, que pode ser algo como "/dev/sdaX", onde "X" é o número da partição.


<h2>3 - Crie um ponto de montagem para o seu HD:</h2>

```shell
sudo mkdir /mnt/sdaX

```


<h2>4 - Abra o arquivo /etc/fstab em um editor de texto (por exemplo, usando o comando sudo nano /etc/fstab).</h2>


<h2>5 - Adicione uma linha ao arquivo fstab para montar automaticamente o HD sem solicitar senha de root. Substitua "/dev/sdaX" pelo caminho da sua partição e "/mnt/sdaX" pelo ponto de montagem criado anteriormente:</h2>

```shell
/dev/sdaX   /mnt/sdaX   ext4   defaults,user   0   0

```


<h2>6 - Salve e feche o arquivo.</h2>

Monte o HD usando o comando:

```shell
sudo mount -a

```

Agora, o seu segundo HD deve ser montado automaticamente em /mnt/sdaX durante a inicialização, e você poderá acessá-lo sem a necessidade de senha de root. Lembre-se de substituir "X" pelos valores específicos da sua configuração.

fonte:
https://chat.openai.com/share/733f0029-fc36-48e6-9ea7-9e2cebf28662
