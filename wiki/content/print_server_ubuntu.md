#linux #ubuntu 

&nbsp;

* Install CUPS
```bash
sudo apt install -y cups

```

* Config CUPS
```bash
sudo systemctl start cups
sudo cupsctl --remote-any
sudo systemctl enable cups
sduo systemctl restart cups
sudo systemctl status cups

```