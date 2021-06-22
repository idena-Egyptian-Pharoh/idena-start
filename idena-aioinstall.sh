reset
sudo rm -r /home/idena-aio
rm /root/main.zip
rm /root/idena-aio.sh
wget https://github.com/idena-Egyptian-Pharoh/idena-aio/archive/refs/heads/main.zip
sudo apt-get install unzip
unzip main.zip 
mkdir /home/idena-aio
mv /root/idena-aio-main/* /home/idena-aio
cp /home/idena-aio/start.sh /root/idena-aio.sh
sudo rm /root/main.zip
sudo rm -r /root/idena-aio-main
bash /root/idena-aio.sh
