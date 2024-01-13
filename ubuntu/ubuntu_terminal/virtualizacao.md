<h1>Virtualização</h1>

<h2>Virt-Manager</h2>

```shell
sudo apt install -y qemu qemu-kvm libvirt-daemon libvirt-clients bridge-utils virt-manager && sudo usermod -a -G libvirt $USER

```


<h4>Guest Agent integração e performance</h4>

```shell
sudo apt install -y qemu-guest-agent

```
<br><br>


<h2>VirtualBox</h2>

```shell
sudo apt install -y virtualbox virtualbox-guest-additions-iso virtualbox-ext-pack

```

```shell
sudo dpkg-reconfigure virtualbox-dkms
sudo modprobe vboxdrv
sudo apt install linux-headers-`uname -r`
sudo usermod -a -G vboxusers $USER

```