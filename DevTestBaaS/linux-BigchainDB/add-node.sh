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
wget https://raw.githubusercontent.com/marleyg/MSFTLabs/master/DevTestBaaS/linux-BigchainDB/start-blockchain.sh

#####################
# setup the Azure CLI
#####################
time sudo npm install azure-cli -g
time sudo update-alternatives --install /usr/bin/node nodejs /usr/bin/nodejs 100

####################
# Setup BigChainDB
####################
time sudo apt-get -y install git build-essential libtool autotools-dev autoconf pkg-config libssl-dev libevent-dev bsdmainutils libboost-all-dev libminiupnpc-dev libzmq3-dev
time sudo apt-get install -y software-properties-common
time sudo git clone git@github.com:bigchaindb/bigchaindb.git
time sudo bigchaindb/docker-compose build
time sudo bigchaindb/docker-compose run --rm bigchaindb bigchaindb configure
time sudo apt-get update


