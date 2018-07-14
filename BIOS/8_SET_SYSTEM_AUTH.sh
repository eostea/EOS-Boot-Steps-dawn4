
./cleos.sh set account permission eosio.token active '{"threshold": 1, "keys":[], "accounts":[{"permission":{"actor":"eosio","permission":"active"},"weight": 1}],"waits":[]}' owner
./cleos.sh set account permission eosio.token owner '{"threshold": 1, "keys":[], "accounts":[{"permission":{"actor":"eosio","permission":"active"},"weight": 1}],"waits":[]}' -p eosio.token@owner

./cleos.sh set account permission eosio.msig active '{"threshold": 1, "keys":[], "accounts":[{"permission":{"actor":"eosio","permission":"active"},"weight": 1}],"waits":[]}' owner
./cleos.sh set account permission eosio.msig active '{"threshold": 1, "keys":[], "accounts":[{"permission":{"actor":"eosio","permission":"active"},"weight": 1}],"waits":[]}' -p eosio.msig@owner

./cleos.sh set account permission eosio.bpay active '{"threshold": 1, "keys":[], "accounts":[{"permission":{"actor":"eosio","permission":"active"},"weight": 1}],"waits":[]}' owner
./cleos.sh set account permission eosio.bpay active '{"threshold": 1, "keys":[], "accounts":[{"permission":{"actor":"eosio","permission":"active"},"weight": 1}],"waits":[]}' -p eosio.bpay@owner

./cleos.sh set account permission eosio.names active '{"threshold": 1, "keys":[], "accounts":[{"permission":{"actor":"eosio","permission":"active"},"weight": 1}],"waits":[]}' owner
./cleos.sh set account permission eosio.names active '{"threshold": 1, "keys":[], "accounts":[{"permission":{"actor":"eosio","permission":"active"},"weight": 1}],"waits":[]}' -p eosio.names@owner

./cleos.sh set account permission eosio.ram active '{"threshold": 1, "keys":[], "accounts":[{"permission":{"actor":"eosio","permission":"active"},"weight": 1}],"waits":[]}' owner
./cleos.sh set account permission eosio.ram active '{"threshold": 1, "keys":[], "accounts":[{"permission":{"actor":"eosio","permission":"active"},"weight": 1}],"waits":[]}' -p eosio.ram@owner

./cleos.sh set account permission eosio.ramfee active '{"threshold": 1, "keys":[], "accounts":[{"permission":{"actor":"eosio","permission":"active"},"weight": 1}],"waits":[]}' owner
./cleos.sh set account permission eosio.ramfee active '{"threshold": 1, "keys":[], "accounts":[{"permission":{"actor":"eosio","permission":"active"},"weight": 1}],"waits":[]}' -p eosio.ramfee@owner

./cleos.sh set account permission eosio.saving active '{"threshold": 1, "keys":[], "accounts":[{"permission":{"actor":"eosio","permission":"active"},"weight": 1}],"waits":[]}' owner
./cleos.sh set account permission eosio.saving active '{"threshold": 1, "keys":[], "accounts":[{"permission":{"actor":"eosio","permission":"active"},"weight": 1}],"waits":[]}' -p eosio.saving@owner

./cleos.sh set account permission eosio.stake active '{"threshold": 1, "keys":[], "accounts":[{"permission":{"actor":"eosio","permission":"active"},"weight": 1}],"waits":[]}' owner
./cleos.sh set account permission eosio.stake owner '{"threshold": 1, "keys":[], "accounts":[{"permission":{"actor":"eosio","permission":"active"},"weight": 1}],"waits":[]}' -p eosio.stake@owner

./cleos.sh set account permission eosio.vpay active '{"threshold": 1, "keys":[], "accounts":[{"permission":{"actor":"eosio","permission":"active"},"weight": 1}],"waits":[]}' owner
./cleos.sh set account permission eosio.vpay owner '{"threshold": 1, "keys":[], "accounts":[{"permission":{"actor":"eosio","permission":"active"},"weight": 1}],"waits":[]}' -p eosio.vpay@owner
