

./cleos.sh set account permission eosio active '{"threshold": 1, "keys":[], "accounts":[{"permission":{"actor":"eosio.prods","permission":"active"},"weight": 1}],"waits":[]}' owner
./cleos.sh set account permission eosio owner '{"threshold": 1, "keys":[], "accounts":[{"permission":{"actor":"eosio.prods","permission":"active"},"weight": 1}],"waits":[]}' -p eosio@owner
