#! /bin/bash

sudo apt -y update
sudo apt -y upgrade
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt install npm
git clone https://github.com/Nboaram/TeamAPoolProjectBackend.git

cd TeamAPoolProjectBackend
git checkout Developer
yes | npm install
cd ..

sudo mv ./Project-automation/api.service /etc/systemd/system/api.service

sudo systemctl daemon-reload
sudo systemctl start api.service
