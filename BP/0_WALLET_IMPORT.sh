#!/bin/bash

WALLET_PASS="$( jq -r '.WALLET_PASSWD' "00_CONFIG.conf" )"
INIT_PRIV="$( jq -r '.INIT_PRIV_KEY' "00_CONFIG.conf" )"

./cleos.sh wallet unlock --password $WALLET_PASS

./cleos.sh wallet import $INIT_PRIV
