#! /bin/bash

sudo apt -y update
sudo apt -y upgrade
sudo apt install -y mongodb
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt install npm
git clone https://github.com/Nboaram/TeamAPoolProjectBackend.git
git clone https://github.com/Nboaram/TeamAPoolProjectUI.git

cd TeamAPoolProjectBackend
git checkout Developer
npm install
cd ..
cd TeamAPoolProjectUI
git checkout Developer
npm install
yes | sudo npm install -g @angular/cli
cd ..


sudo mv ./Project-automation/ui.service /etc/systemd/system/ui.service
sudo mv ./Project-automation/api.service /etc/systemd/system/api.service

sudo systemctl daemon-reload
sudo systemctl start mongodb
sudo systemctl start ui.service
sudo systemctl start api.service
