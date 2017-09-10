#!/bin/bash
####################################
#
# Auto install Digipulse Alpha
#
####################################


# Add user specific for the services
echo "--------- Creating new user.  ---------"
sudo adduser dgpdev && sudo usermod -aG sudo dgpdev && su - dgpdev
echo "----------------------------------------------------"
echo


# Global requirements

echo
echo "--------- Begin global installation ---------"
sudo apt-get update && sudo apt-get upgrade  && sudo apt-get install -y rabbitmq-server redis-server build-essential wget git python libkrb5-dev emacs curl nano node-gyp make
echo "----------------------------------------------------"
echo

#MongoDB setup
echo
echo "--------- Begin MongoDB installation ---------"
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6 && echo "deb [ arch=amd64,arm64 ] http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list && sudo apt-get update && sudo apt-get install -y mongodb-org
echo "----------------------------------------------------"
echo

#NodeJS setup
echo
echo "--------- Begin MongoDB installation ---------"
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash - && sudo apt-get install -y nodejs 
echo "----------------------------------------------------"
echo

#Leveldown & PM2
echo
echo "--------- Begin Level & PM2 installation ---------"
sudo npm install -g leveldown && sudo npm install -g levelup && sudo npm install -g pm2
echo "----------------------------------------------------"
echo

#Install deps
echo
echo "--------- Begin dependencies installation ---------"
npm install
echo "----------------------------------------------------"
echo
