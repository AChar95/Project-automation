#! /bin/bash


sudo apt install -y mongodb
sudo apt install -y nodejs
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install -y nodejs
git clone https://github.com/Nboaram/TeamAPoolProjectBackend.git
git clone https://github.com/Nboaram/TeamAPoolProjectUI.git

cd TeamAPoolProjectBackend
git checkout Developer
npm install
cd ..
cd TeamAPoolProjectUI
git checkout Developer
npm install
sudo npm -g install --save @angular/cli
cd ..


sudo mv ui.service /etc/systemd/system/ui.service
sudo mv api.service /etc/systemd/system/api.service

sudo systemctl daemon-reload
sudo systemctl start mongodb
sudo systemctl start ui.service
sudo systemctl start api.service
