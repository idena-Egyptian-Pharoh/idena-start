#!  /usr/bin/bash
idena-manager disable
rm -rf /home/datadir-node1/ipfs/*
rm -rf /home/datadir-node2/ipfs/*
cd /home/datadir-node1
rm -r idenachain.db
mkdir idenachain.db
cd idenachain.db
apt-get install unzip
wget https://sync.idena-ar.com/idenachain.db.zip
unzip idenachain.db.zip
cd /home/datadir-node2
rm -r idenachain.db
mkdir idenachain.db
cd idenachain.db
apt-get install unzip
mv /home/datadir-node1/idenachain.db/idenachain.db.zip /home/datadir-node2/idenachain.db/
unzip idenachain.db.zip
rm idenachain.db.zip
idena-manager enable
idena-manager change-online-status online 2
idena-manager change-online-status online 1
idena-manager status
