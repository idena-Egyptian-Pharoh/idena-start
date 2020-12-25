#!  /usr/bin/bash
sudo rm -rf /home/datadir-node1/ipfs/*
idena-manager disable
cd /home/datadir-node1
rm -r idenachain.db
mkdir idenachain.db
cd idenachain.db
apt-get install unzip
wget "https://idena.site/idenachain.db.zip"
unzip idenachain.db.zip
sudo rm idenachain.db.zip
idena-manager enable
idena-manager status
sudo reboot
