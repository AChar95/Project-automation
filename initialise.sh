#! /bin/bash

sudo apt -y update
sudo apt -y upgrade
sudo apt install -y mongodb

sudo systemctl start mongodb