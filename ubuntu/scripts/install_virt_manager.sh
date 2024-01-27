#!/bin/bash

# Install Virt-Manager
sudo apt install -y qemu qemu-kvm libvirt-daemon libvirt-clients bridge-utils virt-manager && sudo usermod -a -G libvirt $USER
