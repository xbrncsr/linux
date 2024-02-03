#linux #ubuntu 

* SOURCE: <https://youtu.be/rNhfvpBIBWY?si=sxybQ9Y7WjD0l5gI>
* SOURCE: <https://youtu.be/BBUJBF4EW2o?si=tLW9qMKu76hSthBy>
* SOURCE: <https://orthanc.uclouvain.be/book/users/debian-packages.html>

&nbsp;

#### A - Instalando Orthanc

```bash
sudo apt install -y orthanc orthanc-dicomweb orthanc-gdcm orthanc-imagej orthanc-mysql orthanc-postgresql orthanc-python orthanc-webviewer orthanc-wsi

```

&nbsp;

#### B - Iniciando Orthanc Server

```bash
sudo systemctl start orthanc

```

&nbsp;

#### C - Configurando usuários acesso Web

* FONTE: <https://youtu.be/fyvEQNf9frs?si=baQuwApEaSTopTDu>
* IP:8042


```bash
sudo nano /etc/orthanc/orthanc.json

```


```bash
# Mudar a linha:
"RemoteAccessAllowed" : false,
"RemoteAccessAllowed" : true,

```


```bash
# Mudar a linha e remover os comentarios
"AuthenticationEnabled" : false,
"AuthenticationEnabled" : true,

```


```bash
# Configurar os acessos Web, remover os comentarios
sudo nano /etc/orthanc/credentials.json

```

&nbsp;

#### D - Orthanc Reiniciando e Status

```bash
sudo systemctl restart orthanc

```


```bash
sudo systemctl status orthanc

```