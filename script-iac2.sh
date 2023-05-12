#!/bin/bash

echo "Script Apache2"

echo "Atualizando servidor ..."
apt-get update 
apt-get upgrade -y

echo "Instalando Apache2 ..."
apt-get install apache2 -y

echo "Instalando Unzip ..."
apt-get install unzip -y

echo "Instalando App (Site Dio) ..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip  main.zip
cd linux-site-dio-main
cp -R * /var/www/html/


