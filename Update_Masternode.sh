#/bin/bash
	
echo "We will update your Bitcorn Masternode right now" 
sudo apt-get -y install unzip
bitcorn-cli stop
rm -rf /usr/local/bin/bitcorn*
mkdir CORNUpdated_2.1.0
cd CORNUpdated_2.1.0
wget https://github.com/BITCORNProject/BITCORN/releases/download/v2.1.0/BITCORN-2.1.0-daemon-ubuntu_16.04.tar.gz
tar xzvf BITCORN-2.1.0-daemon-ubuntu_16.04.tar.gz
mv bitcornd /usr/local/bin/bitcornd
mv bitcorn-cli /usr/local/bin/bitcorn-cli
chmod +x /usr/local/bin/bitcorn*
rm -rf ~/.bitcorn/blocks
rm -rf ~/.bitcorn/chainstate
rm -rf ~/.bitcorn/peers.dat
cd ~/.bitcorn/
wget https://github.com/BITCORNProject/BITCORN/releases/download/v2.1.0/bootstrap.zip
unzip bootstrap.zip
echo "addnode=149.28.159.236 add" >> bitcorn.conf
echo "addnode=149.28.164.188 add" >> bitcorn.conf
echo "addnode=45.76.141.47 add" >> bitcorn.conf
echo "addnode=149.28.212.243 add" >> bitcorn.conf
echo "addnode=45.32.76.61 add" >> bitcorn.conf
echo "addnode=207.246.126.83 add" >> bitcorn.conf
echo "addnode=144.217.4.55 add" >> bitcorn.conf
echo "addnode=45.77.110.232 add" >> bitcorn.conf
echo "addnode=144.202.28.175 add" >> bitcorn.conf
echo "addnode=5.189.189.118 add" >> bitcorn.conf
echo "addnode=108.61.241.192 add" >> bitcorn.conf
echo "addnode=84.193.110.243 add" >> bitcorn.conf
echo "addnode=149.28.113.107 add" >> bitcorn.conf
echo "addnode=62.92.20.238 add" >> bitcorn.conf
echo "addnode=66.42.94.82 add" >> bitcorn.conf
echo "addnode=45.76.250.153 add" >> bitcorn.conf
echo "addnode=95.179.151.27 add" >> bitcorn.conf
echo "addnode=207.148.73.216 add" >> bitcorn.conf
echo "addnode=80.240.22.4 add" >> bitcorn.conf
echo "addnode=207.180.227.177 add" >> bitcorn.conf
echo "addnode=185.228.83.83 add" >> bitcorn.conf
echo "addnode=192.52.167.58 add" >> bitcorn.conf
echo "addnode=192.99.246.65 add" >> bitcorn.conf
echo "addnode=51.75.171.74 add" >> bitcorn.conf
echo "addnode=155.138.220.247 add" >> bitcorn.conf
echo "addnode=149.56.246.65 add" >> bitcorn.conf
echo "addnode=5.32.16.143 add" >> bitcorn.conf
echo "addnode=149.28.249.148 add" >> bitcorn.conf
echo "addnode=95.179.232.36 add" >> bitcorn.conf
echo "addnode=207.148.79.82 add" >> bitcorn.conf
echo "addnode=104.156.239.134 add" >> bitcorn.conf

cd ..
cd CORNUpdated_2.1.0
bitcornd -daemon
sleep 10
bitcorn-cli addnode 149.28.159.236 onetry
bitcorn-cli addnode 149.28.164.188 onetry
bitcorn-cli addnode 45.76.141.47 onetry
bitcorn-cli addnode 149.28.212.243 onetry
bitcorn-cli addnode 45.32.76.61 onetry
bitcorn-cli addnode 207.246.126.83 onetry
bitcorn-cli addnode 144.217.4.55 onetry
bitcorn-cli addnode 45.77.110.232 onetry
bitcorn-cli addnode 144.202.28.175 onetry
bitcorn-cli addnode 5.189.189.118 onetry
bitcorn-cli addnode 108.61.241.192 onetry
bitcorn-cli addnode 84.193.110.243 onetry
bitcorn-cli addnode 149.28.113.107 onetry
bitcorn-cli addnode 62.92.20.238 onetry
bitcorn-cli addnode 66.42.94.82 onetry
bitcorn-cli addnode 45.76.250.153 onetry
bitcorn-cli addnode 95.179.151.27 onetry
bitcorn-cli addnode 207.148.73.216 onetry
bitcorn-cli addnode 80.240.22.4 onetry
bitcorn-cli addnode 207.180.227.177 onetry
bitcorn-cli addnode 185.228.83.83 onetry
bitcorn-cli addnode 192.52.167.58 onetry
bitcorn-cli addnode 192.99.246.65 onetry
bitcorn-cli addnode 51.75.171.74 onetry
bitcorn-cli addnode 155.138.220.247 onetry
bitcorn-cli addnode 149.56.246.65 onetry
bitcorn-cli addnode 5.32.16.143 onetry
bitcorn-cli addnode 149.28.249.148 onetry
bitcorn-cli addnode 95.179.232.36 onetry
bitcorn-cli addnode 207.148.79.82 onetry
bitcorn-cli addnode 104.156.239.134 onetry
echo "Masternode Updated!"
echo "Please wait few minutes and start your Masternode again on your Local Wallet"