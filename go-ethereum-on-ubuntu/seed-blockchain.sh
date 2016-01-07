#!/bin/bash

geth --genesis r3-labzero-seed.json --port 30303 --networkid 1001001 --rpc --rpccorsdomain "*" console
