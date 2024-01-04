# 3 - Virtualização

## Virt-Manager
```
sudo apt install -y qemu qemu-kvm libvirt-daemon libvirt-clients bridge-utils virt-manager && sudo usermod -a -G libvirt $USER
```

#### Guest Agent integration and performance
```
sudo apt install -y qemu-guest-agent
```

## Virtualbox
```
sudo apt install -y virtualbox virtualbox-guest-additions-iso virtualbox-ext-pack
```

```
sudo dpkg-reconfigure virtualbox-dkms
sudo modprobe vboxdrv
sudo apt install linux-headers-`uname -r`
sudo usermod -a -G vboxusers $USER
```