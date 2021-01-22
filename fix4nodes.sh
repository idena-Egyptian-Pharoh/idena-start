#!  /usr/bin/bash
idena-manager disable
rm -rf /home/datadir-node1/ipfs/*
rm -rf /home/datadir-node2/ipfs/*
rm -rf /home/datadir-node3/ipfs/*
rm -rf /home/datadir-node4/ipfs/*
cd /home/datadir-node1
rm -r idenachain.db
mkdir idenachain.db
cd idenachain.db
apt-get install unzip
wget https://sync.idena-ar.com/idenachain.db.zip
unzip idenachain.db.zip
cp /home/datadir-node1/idenachain.db/* /home/datadir-node2/idenachain.db/
cp /home/datadir-node1/idenachain.db/* /home/datadir-node3/idenachain.db/
cp /home/datadir-node1/idenachain.db/* /home/datadir-node4/idenachain.db/
idena-manager enable
idena-manager status
