#!  /usr/bin/bash
cd /home
mkdir idena-manager
cd idena-manager
source <(curl -sL https://bit.ly/idena-manager-installer)
idena-manager add -w "" -k "123" -l /home
cd /home/datadir-node1/idenachain.db
sudo apt-get install unzip
wget https://sync.idena-ar.com/idenachain.db.zip
unzip -o idenachain.db.zip
idena-manager add -w "" -k "123" -l /home
idena-manager add -w "" -k "123" -l /home
idena-manager add -w "" -k "123" -l /home
idena-manager disable
cp /home/datadir-node1/idenachain.db/* /home/datadir-node2/idenachain.db/
cp /home/datadir-node1/idenachain.db/* /home/datadir-node3/idenachain.db/
cp /home/datadir-node1/idenachain.db/* /home/datadir-node4/idenachain.db/
idena-manager enable
idena-manager status
