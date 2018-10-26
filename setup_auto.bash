#!/bin/bash

cp /root/.odin/* /usr/bin/. && cd

#Set up initial odin.conf file.  The ipaddress part might not work if multiple adapters 
#present (like for ipv6 and ipv4).
config=~/.odin/odin.conf 
#ipaddress=$(ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1')
ipaddress="Dummy"
echo "staking=1" >> $config
echo "listen=1" >> $config
echo "daemon=1" >> $config
echo "logtimestamps=1" >> $config
echo "maxconnections=256" >> $config
#echo "externalip=$ipaddress" >> $config
echo "masternodeaddr=$ipaddress" >> $config


#start odind to get mn private key and append to odin.conf, restart odind. 
odind
sleep 1
mnkey=$(odin-cli masternode genkey)
echo "masternode=1" >> $config
echo "masternodeprivkey=$mnkey" >> $config
odin-cli stop
odind


echo " "
echo "Masternode VPS setup complete."
echo "(it will now take a few minutes for the mn to get ready)"
echo " "
echo "You can now complete the setup using the Odin gui wallet."
echo " "
echo "The masternode ip address detected was:"
echo "$ipaddress"
echo "Your masternode private key is:"
echo "$mnkey"
echo " "
pause
