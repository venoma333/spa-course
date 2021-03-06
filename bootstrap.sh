#! /usr/bin/env bash

sudo apt-get update
sudo apt-get install -y python-software-properties git
sudo apt-add-repository -y ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get -y install nodejs
cd /vagrant
sudo npm install -g bower gulp
npm install
bower install --allow-root --config.interactive=false
echo "cd /vagrant" >> /home/vagrant/.bashrc
echo "gulp serve" >> /home/vagrant/.bashrc
