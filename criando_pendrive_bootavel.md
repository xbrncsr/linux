# Criando pen-drive bootável pelo terminal
```
fdisk /dev/sdb
```

d - Exclua todas partições existentes no pendrive

```
dd if=/home/bruno/Downloads/arquivoiso.iso of=/dev/sdx bs=1024; sync; status=progress
```


## Converter o disco para MBR com fdisk
```
fdisk /dev/sdx
```

o – Criar uma tabela de partições (MBR) <br>
w – Escrever tabela no disco e fechar


## Converter o disco para GPT com fdisk
```
fdisk /dev/sdx
```

g – Criar uma tabela de partições (GPT) <br>
w – Escrever tabela no disco e fechar


## Particionando o disco com fdisk
```
fdisk /dev/sdx
```

n - Cria uma nova partição <br>
p - Partição primaria <br>
1 - Numero da partição (somente 1) <br>
2048 - Primeiro setor <br>
enter - ultimo setor <br>
w - grava a tabela no disco e sai <br>
FONTE: https://youtu.be/R8u_EIls2VI


## Caso esteja montado desmonte com o comando:
```
umount /deb/sdx
```


## O comando para formatação:
```
mkfs.vfat -I /dev/sdx
```

```
mkfs.ntfs -I /dev/sdx
```

```
mkfs.exfat -I /dev/sdx
```


## Gravar ISO no PENDRIVE
```
dd if=/home/bruno/Downloads/arquivoiso.iso of=/dev/sdx status=progress && sync
```


## Após a finalização, execute o comando abaixo para remover o pendrive com segurança:
```
umount /dev/sdx
```

FONTE: https://learning.lpi.org/pt/learning-materials/101-500/104/104.1/104.1_01/