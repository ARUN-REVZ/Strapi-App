## Strapi-App ##

## Strapi Application installation on Ubuntu 22

sudo apt update
curl -fsSL https://deb.nodesource.com/setup_20.x -o nodesource_setup.sh
bash -E nodesource_setup.sh
node -v && npm -v

##Install yarn & Create new Strapi Project
npm install -g yarn
npm create-strapi-app simple-strapi --quickstart

## Start Strapi App
cd simple-strapi
yarn develop

## Optional(To use PostgreSQL as  DB)
sudo apt install postgres postgres-contrib

## Login to postgresql and create DB and DB_USER for Strapi App
sudo -u postgres psql
CREATE DATABASE mydb;
CREATE USER myuser WITH ENCRYPTED PASSWORD 'mypassword';
GRANT ALL PRIVILEGES ON DATABASE mydb TO myuser;
\q

yarn add pg && yarn develop

