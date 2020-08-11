#!bin/bash
echo "starting angular-githubapi"
cd angular-gitapi
apk git pull
npm install --production
npm run ng build
