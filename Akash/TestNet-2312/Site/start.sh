#!/bin/bash
# Developed by Dimokus (https://t.me/Dimokus)
source $HOME/.bashrc
apt-get install -y sudo nano wget tar zip unzip jq ssh nginx git
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
(echo ${my_root_password}; echo ${my_root_password}) | passwd root
service ssh restart
service nginx start
sleep 5
rm /var/www/html/index.nginx-debian.html
cd /var/www/html/
git clone https://github.com/kvas001/Site-Tools .
# git pull
