#! /bin/bash

sudo apt -y update
sudo apt -y upgrade
sudo apt install -y mongodb
sudo mv mongodb.config /etc/
sudo systemctl start mongodb