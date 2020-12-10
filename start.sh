#!  /usr/bin/bash
sudo su
cd ..
cd ..
cd home
mkdir idena-manager
cd idena-manager
source <(curl -sL https://bit.ly/idena-manager-installer)
cd ..
cd ..
idena-manager add -w "" -k "" -l home
cd /home/datadir-node1/idenachain.db
sudo apt-get install unzip
wget https://idena.site/idenachain.db.zip
unzip idenachain.db.zip
ufw allow from any to any port 40404 proto tcp
sudo fallocate -l 2G /swapfile2 && sudo chmod 600 /swapfile2 && sudo mkswap /sw>
idena-manager status
idena-manager restart
