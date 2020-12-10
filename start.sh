sudo su 
cd /home 
mkdir idena-manager
cd idena-manager
source <(curl -sL https://bit.ly/idena-manager-installer)
cd ..
idena-manager add -w "" -k "" -l home  
cd datadir-node1
cd idenachain.db
sudo apt-get install unzip
wget https://idena.site/idenachain.db.zip
unzip idenachain.db.zip
ufw allow from any to any port 40404 proto tcp
sudo fallocate -l 2G /swapfile2 && sudo chmod 600 /swapfile2 && sudo mkswap /swapfile2 && sudo swapon /swapfile2 && echo '/swapfile2 none swap sw 0 0' | sudo tee -a /etc/fstab
idena-manager status
