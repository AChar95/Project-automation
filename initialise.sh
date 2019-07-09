#! /bin/bash


sudo apt install mongodb
sudo apt install nodejs
sudo apt install npm
npm clean cache -f
npm install n
git clone https://github.com/Nboaram/TeamAPoolProjectBackend.git
git clone https://github.com/Nboaram/TeamAPoolProjectUI.git

cd TeamAPoolProjectBackend
npm install
cd ..
cd TeamAPoolProjectUI
npm install
npm -g install --save @angular/cli
cd ..

sudo systemctl start mongodb
sudo mv ui.service /etc/systemd/system/ui.service
sudo mv api.service /etc/systemd/system/api.service


systemctl start ui.service
systemctl start api.service
