#!/bin/bash
################################################################################
#
# Scrip Created by http://CryptoLions.io
# For EOS Junlge testnet
#
# https://github.com/CryptoLions/
#
################################################################################

#### Display system TABLES

echo Producers
./cleos.sh get table eosio eosio producers
echo Global
./cleos.sh get table eosio eosio global
echo Voters
./cleos.sh get table eosio eosio voters
echo UserRes
./cleos.sh get table eosio eosio userres
echo totalband
./cleos.sh get table eosio eosio totalband
echo Delband
./cleos.sh get table eosio eosio delband
echo Refunds
./cleos.sh get table eosio eosio refunds
