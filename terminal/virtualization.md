#linux #ubuntu 

&nbsp;

## Virt-Manager - Fedora
```bash
sudo dnf install -y @virtualization && sudo systemctl enable libvirtd

```

```bash
sudo usermod -a -G libvirt $USER

```

## Virt-Manager - Ubuntu

```bash
sudo apt install -y qemu qemu-kvm libvirt-daemon libvirt-clients bridge-utils virt-manager && sudo usermod -a -G libvirt $USER

```

* Guest Agent integration and performance
```bash
sudo apt install -y qemu-guest-agent

```

&nbsp;

## VirtualBox

```bash
sudo apt install -y virtualbox virtualbox-guest-additions-iso virtualbox-ext-pack

```

```bash
sudo dpkg-reconfigure virtualbox-dkms
sudo modprobe vboxdrv
sudo apt install linux-headers-`uname -r`
sudo usermod -a -G vboxusers $USER

```