# Install VNC Service Linux Mint 21.3
source: <https://tecadmin.net/setup-x11vnc-server-on-ubuntu-linuxmint/>

## Install X11VNC
```bash
sudo apt install -y x11vnc

```

## Create Password for VNC Server
```bash
x11vnc -storepasswd

```

## Start the X11VNC Server
```bash
x11vnc -usepw -display :0 

```

## Config X11VNC
```bash
sudo nano /etc/systemd/system/x11vnc.service

```

```bash
[Unit]
Description=Start X11VNC at startup.
After=multi-user.target
 
[Service]
Type=simple
ExecStart=/usr/bin/x11vnc -auth guess -forever -loop -noxdamage -repeat -rfbauth /home/YOURUSERNAME/.vnc/passwd -rfbport 5901 -shared
 
[Install]
WantedBy=multi-user.target

```

* Replace **“YOURUSERNAME”** with your actual username.

## Next, reload the systemd manager configuration with this command:
```bash
sudo systemctl daemon-reload

```

## Now, enable the service to start on boot:
```bash
sudo systemctl enable x11vnc.service

```

## Finally, you can start the service immediately without needing to reboot:
```bash
sudo systemctl start x11vnc.service

```