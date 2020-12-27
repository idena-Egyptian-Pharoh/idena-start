#!  /usr/bin/bash
idena-manager disable
cd /home/datadir-node1
rm -r idenachain.db
mkdir idenachain.db
cd idenachain.db
apt-get install unzip
wget https://sync.idena-ar.com/idenachain.db.zip
unzip idenachain.db.zip
rm idenachain.db.zip
cd /root/datadir-node2
rm -r idenachain.db
mkdir idenachain.db
cd idenachain.db
apt-get install unzip
wget https://sync.idena-ar.com/idenachain.db.zip
idena-manager enable
idena-manager status
