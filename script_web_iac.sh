#! /bin/bash

echo "Update system..."
apt-get update

echo "Upgrade system..."
apt-get upgrade -y

echo "Install Apache2..."
apt-get install apache2 -y

echo "Install unzip..."
apt-get install unzip -y

echo "Change to /tmp directory..."
cd /tmp

echo "Download the site..."
wget https://github.com/DaluzBR/DinoGameJS/archive/refs/heads/main.zip

echo "Unzip the site files..."
unzip main.zip

echo "Change to website directory..."
cd DinoGameJS-main

echo "Copy site files to default directory..."
cp -R * /var/www/html/

echo "Finish..."
