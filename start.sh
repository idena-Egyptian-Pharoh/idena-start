#!  /usr/bin/bash
cd /home
mkdir idena-manager
cd idena-manager
source <(curl -sL https://bit.ly/idena-manager-installer)
idena-manager add -w "" -k "" -l /home
cd /home/datadir-node1/idenachain.db
sudo apt-get install unzip
wget https://sync.idena-ar.com/idenachain.db.zip
unzip -o idenachain.db.zip
sudo fallocate -l 2G /swapfile2 && sudo chmod 600 /swapfile2 && sudo mkswap /swapfile2 && sudo swapon /swapfile2 && echo '/swapfile2 none swap sw 0 0' | sudo tee -a /etc/fstab
idena-manager status
idena-manager restart
sudo reboot
