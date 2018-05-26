#!/bin/bash

INIT_ACCOUNT="$( jq -r '.INIT_ACCOUNT' "00_CONFIG.conf" )"

./cleos.sh transfer eosio $INIT_ACCOUNT  "150000001.0000 SYS" "init"
