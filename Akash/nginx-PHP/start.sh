#!/bin/bash
source $HOME/.bashrc
apt-get install -y sudo ssh git
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
(echo ${my_root_password}; echo ${my_root_password}) | passwd root
service ssh restart
sleep 5
# rm /var/www/html/index.nginx-debian.html
# cd /var/www/html/
# git clone https://github.com/PavloDereniuk/Launch-a-website-on-Akash-Network-in-2-minutes .