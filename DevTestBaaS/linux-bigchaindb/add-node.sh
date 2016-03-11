#!/bin/bash

# print commands and arguments as they are executed
set -x

echo "initializing bigchaindb installation"
date
ps axjf

#############
# Parameters
#############

AZUREUSER=$1
HOMEDIR="/home/$AZUREUSER"
VMNAME=`hostname`
echo "User: $AZUREUSER"
echo "User home dir: $HOMEDIR"
echo "vmname: $VMNAME"

# Fetch Genesis and scripts
cd $HOMEDIR
wget https://raw.githubusercontent.com/marleyg/MSFTLabs/master/DevTestBaaS/linux-bigchaindb/start-blockchain.sh

#####################
# setup the Azure CLI
#####################
time sudo npm install azure-cli -g
time sudo update-alternatives --install /usr/bin/node nodejs /usr/bin/nodejs 100

####################
# Setup Docker & BigChainDB
####################

time sudo apt-get -y install git build-essential libtool autotools-dev autoconf pkg-config libssl-dev libevent-dev bsdmainutils libboost-all-dev libminiupnpc-dev libzmq3-dev
time sudo apt-get install -y software-properties-common
time sudo curl -L https://github.com/docker/compose/releases/download/1.6.2/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
time sudo chmod +x /usr/local/bin/docker-compose
time sudo git clone https://github.com/bigchaindb/bigchaindb
time cd bigchaindb
time sudo docker-compose build
time sudo docker-compose run --rm bigchaindb bigchaindb configure
time sudo apt-get update


