#!/bin/bash
sudo apt update
curl -fsSL https://deb.nodesource.com/setup_20.x -o nodesource_setup.sh
bash -E nodesource_setup.sh
node -v && npm -v
sudo npm install -g yarn
npm create-strapi-app simple-strapi --quickstart

cd simple-strapi
yarn develop

