#!/bin/bash
TZ=Europe/London && ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
echo $OSTYPE
echo $HOME
echo ${my_root_password}
# SSH
# apk add bash openssh
# rc-update add sshd
# service sshd start
# ww
apk add --update --no-cache openssh bash
source $HOME/.bashrc
# apt-get install -y sudo nano wget tar zip unzip jq ssh git
echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config
# RUN adduser -h /home/root -s /bin/sh -D root
echo -n 'root:${my_root_password}' | chpasswd
# ENTRYPOINT ["/entrypoint.sh"]
# EXPOSE 22
# COPY entrypoint.sh /
sleep 5
service sshd start
# service nginx start
# rm /var/www/html/index.nginx-debian.html
# cd /var/www/html/
# git clone https://github.com/name/repo .
# git pull
