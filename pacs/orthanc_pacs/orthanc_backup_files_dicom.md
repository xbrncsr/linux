#linux #ubuntu 

* Acessando outra unidade de disco:

```bash
cd /mnt/sdX/

```

```bash
sudo mkdir db-v6

```

* Copiando os arquivos .dicom do diretorio padrao "/var/lib/orthanc/db-v6/" para o segundo disco

```bash
sudo rsync -av /var/lib/orthanc/db-v6/ /mnt/sdX/db-v6

```