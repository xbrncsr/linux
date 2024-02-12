#!/bin/bash

# Install X11VNC
sudo apt install -y x11vnc

# Create Password for VNC Server
x11vnc -storepasswd

# Start the X11VNC Server
#x11vnc -usepw -display :0

# Config X11VNC
sudo tee /etc/systemd/system/x11vnc.service > /dev/null <<'EOF'
[Unit]
Description=Start X11VNC at startup.
After=multi-user.target
 
[Service]
Type=simple
ExecStart=/usr/bin/x11vnc -auth guess -forever -loop -noxdamage -repeat -rfbauth /home/$USER/.vnc/passwd -rfbport 5901 -shared
 
[Install]
WantedBy=multi-user.target
EOF

# Replace "YOURUSERNAME" with the actual username
sudo sed -i 's/YOURUSERNAME/'"$USER"'/g' /etc/systemd/system/x11vnc.service

# Reload systemd manager configuration
sudo systemctl daemon-reload

# Enable the service to start on boot
sudo systemctl enable x11vnc.service

# Start the service immediately without needing to reboot
sudo systemctl start x11vnc.service
