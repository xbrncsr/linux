#!/bin/bash

# Install X11VNC
sudo apt install -y x11vnc

# Create Password for VNC Server
#x11vnc -storepasswd
x11vnc -storepasswd $HOME/.vnc/passwd

# Config X11VNC
SERVICE_FILE="/etc/systemd/system/x11vnc.service"
sudo bash -c "cat > $SERVICE_FILE" <<EOF
[Unit]
Description=Start X11VNC at startup.
After=multi-user.target

[Service]
Type=simple
ExecStart=/usr/bin/x11vnc -auth guess -forever -loop -noxdamage -repeat -rfbauth /home/$(whoami)/.vnc/passwd -rfbport 5901 -shared

[Install]
WantedBy=multi-user.target
EOF

# Reload systemd manager configuration
sudo systemctl daemon-reload

# Enable the service to start on boot
sudo systemctl enable x11vnc.service

# Start the service immediately without needing to reboot
sudo systemctl start x11vnc.service
