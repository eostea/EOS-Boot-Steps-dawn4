#!/bin/bash

INIT_ACCOUNT="$( jq -r '.INIT_ACCOUNT' "00_CONFIG.conf" )"

./cleos.sh transfer eosio $INIT_ACCOUNT  "100000000.0000 SYS" "init"
