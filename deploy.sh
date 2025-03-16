#!/usr/bin/env bash
sudo apt update && sudo install nodejs npm
# Install pm2 which is a production process manager for Node.js witha built-in load balancer.
sudo npm install -g pm2
# stop any instances of out application running currently
pm2 stop simple_app
# change directory into folder where application is downloaded
cd DevOpsSec2025_CA1/
# Install application dependencies
npm install
#Start the application with the process name simple_app using pm2
pm2 start ./bin/www --name simple_app
