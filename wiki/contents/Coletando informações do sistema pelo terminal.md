

## Frequência e o tipo da memória RAM

```bash
sudo lshw -short -C memory

```

## Informações da memória RAM

```bash
less /proc/meminfo

```

```bash
free

```

## Número de série do sistema, nome do fabricante e modelo

```bash
sudo dmidecode -­s system­serial­number

```

```bash
sudo dmidecode ­-s system­manufacturer

```

```bash
sudo dmidecode ­-s system­product­name

```

```bash
sudo dmidecode | more

```

## Informação da CPU do sistema

```bash
cat /proc/cpuinfo

```

```bash
lscpu

```

## Estatísticas relacionadas a CPU (processadores)

```bash
sudo mpstat

```

## Exibição em megabytes

```bash
free ­-m

```

## Exibição em gigabytes

```bash
free ­-g

```

## Uso do espaço da memória swap

```bash
swapon -­s

```

```bash
cat /proc/swaps

```

```bash
cat /proc/meminfo

```

```bash
vmstat

```

## Versão de distribuição Ubuntu Linux

```bash
lsb_release ­-a

```

## Versão do kernel Linux

```bash
uname ­-r

```

```bash
uname ­-a

```

## Informações dos parâmetros do kernel

```bash
cat /proc/cmdline

```

```bash
sysctl ­-a | more

```

## 32 ou 64 bits?

```bash
getconf LONG_BIT

```

## Informações do disco (atributos, uso, espaço)

```bash
sudo fdisk ­-l /dev/sda

```

```bash
sudo blkid

```

```bash
sudo lsblk

```

```bash
df ­-H

```

```bash
du -­sh {{pasta_específica}}

```

```bash
sudo iostat

```

## Informações de dispositivos PCI

```bash
lspci

```

```bash
lspci ­vvvn| less

```

## Informações de dispositivos USB

```bash
lsusb

```

```bash
lsusb ­-vt

```

## Informações de dispositivos gráficos (NVIDIA/AMD)

```bash
nvidia­smi

```

```bash
nvidia­settings

```

```bash
fglrxinfo

```

## Informações de dispositivos de áudio

```bash
cat /proc/asound/cards

```

```bash
arecord ­-l

```

## Informações de uso do sistema

```bash
uptime

```

```bash
cat /proc/loadavg

```

```bash
sudo top

```

```bash
last reboot

```

## Informações dos drivers do Kernel (módulos)

```bash
sudo lsmod

```

```bash
sudo modinfo {{nome driver}}

```

```bash
sudo modinfo kvm

```

## Informações de todos os serviços em execução

```bash
sudo service –status­all

```

```bash
sudo initctl list

```

## Informações de todos os processos

```bash
sudo pstree

```

## Lista de todos os pacotes instalados

```bash
dpkg ­-l

```