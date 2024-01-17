# Manipulando Partições

## Seções:

- [1 - Desmonte a unidade de disco](#1---desmonte-a-unidade-de-disco)

- [2 - Formatando em GPT](#2---formatando-em-gpt)

- [3 - Formatando em MBR](#3---formatando-em-mbr)

- [4 - Montando a unidade de disco](#4---montando-a-unidade-de-disco)

- [5 - Acessando a unidade de disco:](#5---acessando-a-unidade-de-disco)


&nbsp;
&nbsp;


## 1 - Desmonte a unidade de disco

```bash
sudo umount /dev/sdX

```

&nbsp;
&nbsp;


## 2 - Formatando em GPT
#### Verificando se a partição é GPT

```bash
sudo gdisk -l /dev/sdX

```

#### Transformando a partição em GPT

```bash
sudo gdisk /dev/sdX
```

* - o = Transformar em GPT
* - w = Para escrever


&nbsp;
&nbsp;


## 3 - Formatando em MBR
#### Verificando se a partição é MBR

```bash
sudo fdisk -l

```

#### Criando uma nova partição

```bash
sudo fdisk /dev/sdX

```

* d = Para deletar uma partição.
* n = Para criar uma nova partição.
* p = Criar uma partição primaria.
* w = Para escrever as mudanças no pendrive.

#### Formatando a unidade de disco

```bash
sudo mkfs.ext4 /dev/sdX

```


&nbsp;
&nbsp;


## 4 - Montando a unidade de disco
#### Crie um Diretório de Ponto de Montagem:

```bash
sudo mkdir /mnt/sdX

```

#### Monte a Unidade:

```bash
sudo mount /dev/sdX /mnt/sdX

```

#### Verifique a Montagem:

```bash
df -h

```

#### Montagem Automática no Boot (Opcional):

```bash
sudo nano /etc/fstab

```

#### Adicione uma linha semelhante à seguinte:

```bash
/dev/sdX   /mnt/sdX   ext4   defaults   0   2

```


&nbsp;
&nbsp;


## 5 - Acessando a unidade de disco:

```bash
cd /mnt/sdX

```

