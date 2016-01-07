#!/bin/bash

geth --genesis lab-seed.json --port 30303 --networkid 1001001 --rpc --rpccorsdomain "*" console
