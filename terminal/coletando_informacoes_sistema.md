# Coletando informações do sistema pelo terminal

## Frequência e o tipo da memória RAM
```
sudo lshw -short -C memory
```

## Informações da memória RAM
```
less /proc/meminfo
```

```
free
```

## Número de série do sistema, nome do fabricante e modelo
```
sudo dmidecode -­s system­serial­number
```

```
sudo dmidecode ­-s system­manufacturer
```

```
sudo dmidecode ­-s system­product­name
```

```
sudo dmidecode | more
```

## Informação da CPU do sistema
```
cat /proc/cpuinfo
```

```
lscpu
```

## Estatísticas relacionadas a CPU (processadores)
```
sudo mpstat
```

## Exibição em megabytes
```
free ­-m
```

## Exibição em gigabytes
```
free ­-g
```

## Uso do espaço da memória swap
```
swapon -­s
```

```
cat /proc/swaps
```

```
cat /proc/meminfo
```

```
vmstat
```

## Versão de distribuição Ubuntu Linux
```
lsb_release ­-a
```

## Versão do kernel Linux
```
uname ­-r
```

```
uname ­-a
```

## Informações dos parâmetros do kernel
```
cat /proc/cmdline
```

```
sysctl ­-a | more
```

## 32 ou 64 bits?
```
getconf LONG_BIT
```

## Informações do disco (atributos, uso, espaço)
```
sudo fdisk ­-l /dev/sda
```

```
sudo blkid
```

```
sudo lsblk
```

```
df ­-H
```

```
du -­sh {{pasta_específica}}
```

```
sudo iostat
```

## Informações de dispositivos PCI
```
lspci
```

```
lspci ­vvvn| less
```

## Informações de dispositivos USB
```
lsusb
```

```
lsusb ­-vt
```

## Informações de dispositivos gráficos (NVIDIA/AMD)
```
nvidia­smi
```

```
nvidia­settings
```

```
fglrxinfo
```

## Informações de dispositivos de áudio
```
cat /proc/asound/cards
```

```
arecord ­-l
```

## Informações de uso do sistema
```
uptime
```

```
cat /proc/loadavg
```

```
sudo top
```

```
last reboot
```

## Informações dos drivers do Kernel (módulos)
```
sudo lsmod
```

```
sudo modinfo {{nome driver}}
```

```
sudo modinfo kvm
```

## Informações de todos os serviços em execução
```
sudo service –status­all
```

```
sudo initctl list
```

## Informações de todos os processos
```
sudo pstree
```

## Lista de todos os pacotes instalados
```
dpkg ­-l
```

