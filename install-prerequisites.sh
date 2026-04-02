#!/usr/bin/env bash
set -e

echo "Installing pre-requisites"

sudo apt-get update
sudo apt-get install -y ca-certificates curl gnupg nginx

curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt-get install -y nodejs

sudo npm install -g pm2

sudo systemctl enable nginx
sudo systemctl start nginx

node -v
npm -v
pm2 -v
