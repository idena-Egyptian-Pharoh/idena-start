echo 'backing up shared node logs'
sleep 3
echo 'Please Wait'
sleep 3
pm2 stop idena-node-proxy
sudo apt install apache2 -y
sudo apt install zip -y
/etc/init.d/apache2 start
sudo service apache2 start
rm -r /var/www/html/*
reset
echo 'please enter your folder name to create'
read file
mkdir /var/www/html/$file
cp /root/idena-node-proxy/access.log /var/www/html/$file
cp /root/datadir/logs/output.log /var/www/html/$file
cp /root/idena-node-proxy/.env /var/www/html/shared.sh
wait
cd /var/www/html/$file
zip $file *
mv /var/www/html/$file/$file.zip /var/www/html
echo 'enter your node url:'
read url
echo 'here your link to download'
echo $url/$file.zip
sleep 10
echo 'please destroy shared node after backup to deduct costs'
sleep 5
echo 'Mission Complete'
