#/bin/bash
	
echo "We will update your Bitcorn Masternode right now" 
sudo apt-get -y install unzip
bitcorn-cli stop
rm -rf /usr/local/bin/bitcorn*
mkdir CORNUpdated_v2.1.2
cd CORNUpdated_v2.1.2
wget https://github.com/BITCORNProject/BITCORN/releases/download/v2.1.2/BITCORN-v2.1.2-daemon.tar.gz
tar xzvf BITCORN-v2.1.2-daemon.tar.gz
mv bitcornd /usr/local/bin/bitcornd
mv bitcorn-cli /usr/local/bin/bitcorn-cli
chmod +x /usr/local/bin/bitcorn*
rm -rf ~/.bitcorn/blocks
rm -rf ~/.bitcorn/chainstate
rm -rf ~/.bitcorn/peers.dat
cd ~/.bitcorn/
wget https://github.com/BITCORNProject/BITCORN/releases/download/v2.1.2/bootstrap.zip
unzip bootstrap.zip

cd ..
cd CORNUpdated_v2.1.2
bitcornd -daemon
sleep 10
echo "Masternode Updated!"
echo "Please wait few minutes and start your Masternode again on your Local Wallet"