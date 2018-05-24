#!/bin/bash
################################################################################
#
# Scrip Created by http://CryptoLions.io
# For EOS Junlge testnet
#
# https://github.com/CryptoLions/
#
################################################################################

./cleos.sh push action eosio.token create '["eosio", "1000000000.0000 SYS", 0, 0, 0]' -p eosio.token
./cleos.sh push action eosio.token issue '["eosio",  "1000000000.0000 SYS", "init"]' -p eosio
