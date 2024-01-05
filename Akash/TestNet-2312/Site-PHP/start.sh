#!/bin/bash
TZ=Europe/London && ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
source $HOME/.bashrc
apt-get install -y sudo nano wget tar zip unzip jq ssh nginx git
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
(echo ${my_root_password}; echo ${my_root_password}) | passwd root
service ssh restart
#php
apt-get install -y php php-cli php-fpm php-json php-common php-mysql php-zip php-gd php-mbstring php-curl php-xml php-pear php-bcmath
mkdir -p /var/run/php
touch /var/run/php/php7.4-fpm.sock
service php7.4-fpm stop
service php7.4-fpm start
# end php
service nginx start
sleep 5

rm /var/www/html/index.nginx-debian.html
rm /var/www/html/index.html
cd /var/www/html/
git clone https://github.com/kvas001/Site-tst .
## git pull
