#!/bin/bash

echo "Atualizando e baixando o Apache e Unzip"

# Updating and downloading required apps
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Iniciando e e verificando o Apache"

# Starting and verifying apache
systemctl start apache2
systemctl status apache2

echo "Atualização e instalação dos apps com Sucesso!"

echo "Baixando arquvios e copiando para pasta correta"


# Downloading application and moving to correct location
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Finalizado õ/"