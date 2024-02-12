#!/bin/bash

# Install SSH Service - Ubuntu
sudo apt install -y openssh-server

# Start and Enable the SSH Service
sudo systemctl start ssh
sudo systemctl enable ssh

# Allow root user to access via SSH
sudo nano /etc/ssh/sshd_config

# Modify the line
# PermitRootLogin prohibit-password
# PermitRootLogin yes

# Save and exit the editor

# Use sed to modify sshd_config
sudo sed -i 's/#\?PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# Restart SSH Service
sudo systemctl restart ssh

# Status SSH Service
sudo systemctl status ssh

# (optional) - Allow SSH traffic on firewall
sudo ufw allow 22
