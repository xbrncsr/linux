<h1>Coletando informações do sistema pelo terminal

<h2>Frequência e o tipo da memória RAM</h2>

```shell
sudo lshw -short -C memory

```

<h2>Informações da memória RAM</h2>

```shell
less /proc/meminfo

```

```shell
free

```

<h2>Número de série do sistema, nome do fabricante e modelo</h2>

```shell
sudo dmidecode -­s system­serial­number

```

```shell
sudo dmidecode ­-s system­manufacturer

```

```shell
sudo dmidecode ­-s system­product­name

```

```shell
sudo dmidecode | more

```

<h2>Informação da CPU do sistema</h2>

```shell
cat /proc/cpuinfo

```

```shell
lscpu

```

<h2>Estatísticas relacionadas a CPU (processadores)</h2>

```shell
sudo mpstat

```

<h2>Exibição em megabytes</h2>

```shell
free ­-m

```

<h2>Exibição em gigabytes</h2>

```shell
free ­-g

```

<h2>Uso do espaço da memória swap</h2>

```shell
swapon -­s

```

```shell
cat /proc/swaps

```

```shell
cat /proc/meminfo

```

```shell
vmstat

```

<h2>Versão de distribuição Ubuntu Linux</h2>

```shell
lsb_release ­-a

```

<h2>Versão do kernel Linux</h2>

```shell
uname ­-r

```

```shell
uname ­-a

```

<h2>Informações dos parâmetros do kernel</h2>

```shell
cat /proc/cmdline

```

```shell
sysctl ­-a | more

```

<h2>32 ou 64 bits?</h2>

```shell
getconf LONG_BIT

```

<h2>Informações do disco (atributos, uso, espaço)</h2>

```shell
sudo fdisk ­-l /dev/sda

```

```shell
sudo blkid

```

```shell
sudo lsblk

```

```shell
df ­-H

```

```shell
du -­sh {{pasta_específica}}

```

```shell
sudo iostat

```

<h2>Informações de dispositivos PCI</h2>

```shell
lspci

```

```shell
lspci ­vvvn| less

```

<h2>Informações de dispositivos USB</h2>

```shell
lsusb

```

```shell
lsusb ­-vt

```

<h2>Informações de dispositivos gráficos (NVIDIA/AMD)</h2>

```shell
nvidia­smi

```

```shell
nvidia­settings

```

```shell
fglrxinfo

```

<h2>Informações de dispositivos de áudio</h2>

```shell
cat /proc/asound/cards

```

```shell
arecord ­-l

```

<h2>Informações de uso do sistema</h2>

```shell
uptime

```

```shell
cat /proc/loadavg

```

```shell
sudo top

```

```shell
last reboot

```

<h2>Informações dos drivers do Kernel (módulos)</h2>

```shell
sudo lsmod

```

```shell
sudo modinfo {{nome driver}}

```

```shell
sudo modinfo kvm

```

<h2>Informações de todos os serviços em execução</h2>

```shell
sudo service –status­all

```

```shell
sudo initctl list

```

<h2>Informações de todos os processos</h2>

```shell
sudo pstree

```

<h2>Lista de todos os pacotes instalados</h2>

```shell
dpkg ­-l

```

