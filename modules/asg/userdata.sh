#!/bin/bash


URL='https://www.free-css.com/assets/files/free-css-templates/download/page293/hexashop.zip'
ART_NAME='ecommerce_shop'
TEMPDIR="/tmp/webfiles"

# Set Variables for Ubuntu
PACKAGE="apache2 wget unzip"
SVC="apache2"


echo "Running Setup on Ubuntu"
# Installing Dependencies
echo "########################################"
echo "Installing packages."
echo "########################################"
sudo apt update
sudo apt install $PACKAGE -y > /dev/null
echo

# Start & Enable Service
echo "########################################"
echo "Start & Enable HTTPD Service"
echo "########################################"
sudo systemctl start $SVC
sudo systemctl enable $SVC
echo

# Creating Temp Directory
echo "########################################"
echo "Starting Artifact Deployment"
echo "########################################"
mkdir -p $TEMPDIR
cd $TEMPDIR
echo

wget $URL > /dev/null
unzip $ART_NAME.zip > /dev/null
sudo cp -r $ART_NAME/* /var/www/html/
echo

# Bounce Service
echo "########################################"
echo "Restarting HTTPD service"
echo "########################################"
systemctl restart $SVC
echo

# Clean Up
echo "########################################"
echo "Removing Temporary Files"
echo "########################################"
rm -rf $TEMPDIR
echo "cleanup done"