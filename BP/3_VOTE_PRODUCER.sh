#!/bin/bash

INIT_ACCOUNT="$( jq -r '.INIT_ACCOUNT' "00_CONFIG.conf" )"

./cleos.sh system voteproducer prods $INIT_ACCOUNT $INIT_ACCOUNT -p $INIT_ACCOUNT
./cleos.sh system claimrewards $INIT_ACCOUNT  //块奖励
