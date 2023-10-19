#!/bin/bash
apt-get update
apt-get install -y apache2 unzip
systemctl start apache2
systemctl enable apache2
wget https://www.tooplate.com/zip-templates/2100_artist.zip
unzip -o 2100_artist.zip
cp -r 2100_artist/* /var/www/html/
           
