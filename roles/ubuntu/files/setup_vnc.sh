#!/bin/sh

sudo ufw allow 3389/tcp
sudo ufw allow 3389/udp
sudo ss -ltnp
ufw allow 3389/tcp
sudo ufw reload
sudo ss -ltnp
sudo apt install xfce4 xfce4-goodies tightvncserver
sudo apt update
sudo apt install ubuntu-desktop xrdp
sudo ss -ltnp
ip a
sudo ufw allow 3389/tcp
sudo ufw allow 3389/udp
ip a
vncserver -localhost no
sudo passwd ubuntu
vncserver
service vncserver start
sudo systemctl status
cd /etc/systemd/system/
ls
vncserver --list
sudo apt-get install x11vnc
sudo netstat -plutn
sudo apt-get install xfce4 xfce4-goodies tightvncserver
vncserver
nano ~/.vnc/xstartup
chmod +x ~/.vnc/xstartup
vncserver
sudo nano /etc/systemd/system/vncserver@.service
sudo systemctl daemon-reload
sudo systemctl enable vncserver@1.service
vncserver -kill :1
sudo systemctl start vncserver@1
sudo systemctl status vncserver@1