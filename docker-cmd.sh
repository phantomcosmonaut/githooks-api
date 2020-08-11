#!bin/bash
echo "starting angular-githubapi"
cd angular-gitapi
apt-get git pull
npm install --production
npm run ng build
