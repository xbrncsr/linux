<h1>Criando pen-drive bootável pelo terminal</h2>

```shell
fdisk /dev/sdb

```

d - Exclua todas partições existentes no pendrive

```shell
dd if=/home/bruno/Downloads/arquivoiso.iso of=/dev/sdx bs=1024; sync; status=progress

```


<h2>Converter o disco para MBR com fdisk</h2>

```shell
fdisk /dev/sdx

```

o – Criar uma tabela de partições (MBR) <br>
w – Escrever tabela no disco e fechar


<h2>Converter o disco para GPT com fdisk</h2>

```shell
fdisk /dev/sdx

```

g – Criar uma tabela de partições (GPT) <br>
w – Escrever tabela no disco e fechar


<h2>Particionando o disco com fdisk</h2>

```shell
fdisk /dev/sdx

```

n - Cria uma nova partição <br>
p - Partição primaria <br>
1 - Numero da partição (somente 1) <br>
2048 - Primeiro setor <br>
enter - ultimo setor <br>
w - grava a tabela no disco e sai <br>
FONTE: https://youtu.be/R8u_EIls2VI


<h2>Caso esteja montado desmonte com o comando:</h2>

```shell
umount /deb/sdx

```


<h2>O comando para formatação:</h2>

```shell
mkfs.vfat -I /dev/sdx

```

```shell
mkfs.ntfs -I /dev/sdx

```

```shell
mkfs.exfat -I /dev/sdx

```


<h2>Gravar ISO no PENDRIVE</h2>

```shell
dd if=/home/bruno/Downloads/arquivoiso.iso of=/dev/sdx status=progress && sync

```


<h2>Após a finalização, execute o comando abaixo para remover o pendrive com segurança:</h2>

```shell
umount /dev/sdx

```

FONTE: https://learning.lpi.org/pt/learning-materials/101-500/104/104.1/104.1_01/