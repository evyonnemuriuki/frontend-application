#!/bin/bash

# navigate to app folder
cd /app

# Remove any existing node and npm installations
apt-get remove --purge -y nodejs npm
apt-get autoremove -y

# install node and npm
apt-get install curl
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
apt-get install nodejs -y
apt-get install npm -y
apt install nginx -y
ufw allow 'Nginx HTTP'