#!/bin/bash

INIT_ACCOUNT="$( jq -r '.INIT_ACCOUNT' "00_CONFIG.conf" )"

./cleos.sh push action eosio delegatebw '{"from":"'$INIT_ACCOUNT'", "receiver":"'$INIT_ACCOUNT'", "stake_net_quantity":"50000000.0000 SYS", "stake_cpu_quantity":"50000000.0000 SYS", "transfer": true}' -p $INIT_ACCOUNT
