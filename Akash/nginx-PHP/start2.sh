#!/bin/sh
TZ=Europe/London && ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

apk update
apk upgrade
apk add openssh
service sshd start
rc-update add sshd

echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config
echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config
echo 'AllowTcpForwarding yes' >> /etc/ssh/sshd_config

echo -n 'root:${my_root_password}' | chpasswd
sleep 5

service sshd restart

# rm /var/www/html/index.nginx-debian.html
# cd /var/www/html/
# git clone https://github.com/name/repo .
# git pull
