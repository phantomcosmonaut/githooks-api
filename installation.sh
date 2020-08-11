apt-get update
curl -sL https://deb.nodesource.com/setup_12.x
apt install npm
expect *
send Y
echo "node version: " node --version
apt install git
git clone https://github.com/phantomcosmonaut/angular-gitapi.git
pip install -r requirements.txt