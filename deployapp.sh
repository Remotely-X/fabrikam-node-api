#!/usr/bin/env bash
set -e

echo "Starting deployment script run"

npm install
pm2 delete app || true
pm2 start ./bin/www --name app
pm2 save

echo "End of script run"
