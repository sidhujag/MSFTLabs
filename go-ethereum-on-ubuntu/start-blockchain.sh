#!/bin/bash

geth --networkid 1001001 --port 30303 --rpc --rpccorsdomain "*" console --ipcpath "/home/hiro/.ethereum/geth.ipc"
