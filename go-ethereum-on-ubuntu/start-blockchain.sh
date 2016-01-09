#!/bin/bash

geth --networkid 1001001 --port 30303 --rpc --rpccorsdomain "*" console --ipc "/home/hiro/.ethereum/geth.ipc"
