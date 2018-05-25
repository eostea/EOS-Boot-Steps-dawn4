#!/bin/bash

INIT_ACCOUNT="$( jq -r '.INIT_ACCOUNT' "00_CONFIG.conf" )"
INIT_PUB_KEY="$( jq -r '.INIT_PUB_KEY' "00_CONFIG.conf" )"

./cleos.sh system newaccount --stake-net "50.0000 SYS" --stake-cpu "500.0000 SYS" --buy-ram-bytes 8888888 eosio $INIT_ACCOUNT $INIT_PUB_KEY $INIT_PUB_KEY -p eosio
