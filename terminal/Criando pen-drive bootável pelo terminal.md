&nbsp;

```bash
fdisk /dev/sdb

```

* d - Exclua todas partições existentes no pendrive

```bash
dd if=/home/bruno/Downloads/arquivoiso.iso of=/dev/sdx bs=1024; sync; status=progress

```


## Converter o disco para MBR com fdisk

```bash
fdisk /dev/sdx

```

* o – Criar uma tabela de partições (MBR) <br>
* w – Escrever tabela no disco e fechar


## Converter o disco para GPT com fdisk

```bash
fdisk /dev/sdx

```

* g – Criar uma tabela de partições (GPT)
* w – Escrever tabela no disco e fechar


## Particionando o disco com fdisk

```bash
fdisk /dev/sdx

```

* n - Cria uma nova partição
* p - Partição primaria
* 1 - Numero da partição (somente 1)
* 2048 - Primeiro setor
* enter - ultimo setor
* w - grava a tabela no disco e sai
* FONTE: <https://youtu.be/R8u_EIls2VI>


## Caso esteja montado desmonte com o comando:

```bash
umount /deb/sdx

```


## O comando para formatação:

```bash
mkfs.vfat -I /dev/sdx

```

```bash
mkfs.ntfs -I /dev/sdx

```

```bash
mkfs.exfat -I /dev/sdx

```


## Gravar ISO no PENDRIVE

```bash
dd if=/home/bruno/Downloads/arquivoiso.iso of=/dev/sdx status=progress && sync

```


## Após a finalização, execute o comando abaixo para remover o pendrive com segurança:

```bash
umount /dev/sdx

```

* FONTE: <https://learning.lpi.org/pt/learning-materials/101-500/104/104.1/104.1_01/>