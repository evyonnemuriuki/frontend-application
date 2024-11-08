#!/bin/bash

# navigate to app folder
cd /app

# install dependencies
npm install
npm run build
# Ensure the build directory exists and copy build files to the Nginx root directory
#rm -rf /var/www/html/* # Remove existing files in Nginx root directory
cp -r build/* /var/www/html

# Install PM2 globally (only if you're running a Node.js backend, otherwise this can be omitted)
# npm install pm2 -g

# Restart Nginx to serve the updated files
systemctl restart nginx
