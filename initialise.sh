#! /bin/bash

sudo apt -y update
sudo apt -y upgrade
sudo apt install -y mongodb
sudo mv mongod.conf /etc/mongodb.conf
sudo systemctl daemon-reload
sudo systemctl start mongodb
