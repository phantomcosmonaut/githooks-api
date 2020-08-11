#!bin/bash
echo "pulling from github"
cd /home/ec2-user/angular-gitapi
git pull phantomcosmonaut/angular-gitapi
wait
echo "running webpack"
npm run ng build