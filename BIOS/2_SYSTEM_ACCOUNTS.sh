#!/bin/bash

EOSIO_PRODUCER_KEY="$( jq -r '.EOSIO_PRODUCER_PUB_KEY' "00_CONFIG.conf" )"

./cleos.sh create account eosio eosio.token $EOSIO_PRODUCER_KEY $EOSIO_PRODUCER_KEY -p eosio
./cleos.sh create account eosio eosio.msig $EOSIO_PRODUCER_KEY $EOSIO_PRODUCER_KEY -p eosio
./cleos.sh create account eosio eosio.bpay $EOSIO_PRODUCER_KEY $EOSIO_PRODUCER_KEY -p eosio
./cleos.sh create account eosio eosio.names $EOSIO_PRODUCER_KEY $EOSIO_PRODUCER_KEY -p eosio
./cleos.sh create account eosio eosio.ram $EOSIO_PRODUCER_KEY $EOSIO_PRODUCER_KEY -p eosio
./cleos.sh create account eosio eosio.ramfee $EOSIO_PRODUCER_KEY $EOSIO_PRODUCER_KEY -p eosio
./cleos.sh create account eosio eosio.saving $EOSIO_PRODUCER_KEY $EOSIO_PRODUCER_KEY -p eosio
./cleos.sh create account eosio eosio.stake $EOSIO_PRODUCER_KEY $EOSIO_PRODUCER_KEY -p eosio
./cleos.sh create account eosio eosio.vpay $EOSIO_PRODUCER_KEY $EOSIO_PRODUCER_KEY -p eosio
