#! /bin/bash


sudo apt install mongodb
sudo apt-get install curl python-software-properties
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install nodejs
sudo apt install npm
git clone https://github.com/Nboaram/TeamAPoolProjectBackend.git
git clone https://github.com/Nboaram/TeamAPoolProjectUI.git

systemctl start mongodb
cd TeamAPoolProjectBackend
npm install
cd ..
cd TeamAPoolProjectUI
npm install
npm -g install --save @angular/cli
cd ..


sudo mv ui.service /etc/systemd/system/ui.service
sudo mv api.service /etc/systemd/system/api.service


systemctl start ui.service
systemctl start api.service
