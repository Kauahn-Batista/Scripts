#!/bin/bash

echo "Atualizando o Servidor..."
apt update -y
apt upgrade -y

echo "Instalando Apache..."
apt install apache2 -y

echo "Instalando Unzip..."
apt install unzip -y

echo "Baixando Recursos..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Extraindo Arquivos..."
unzip main.zip

echo "Movendo Recursos para a Pasta Padrão do Apache"
rm /var/www/html/index.html
mv /tpm/linux-site-dio-main/* /var/www/html/

echo "Finalizado!!!"
