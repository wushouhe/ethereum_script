nohup  geth  --cache=512  --datadir "./db"  --rpc --rpcaddr=0.0.0.0 --rpccorsdomain "*" --nodiscover --maxpeers 30  --networkid 1980  --rpcapi "eth,net,web3,personal,admin,shh,txpool,debug,miner"  --etherbase "0xeb680f30715f347d4eb5cd03ac5eced297ac5046"  >> gethrun.log 2>&1 &

sleep 1s
geth --exec 'loadScript("script.js")' attach ipc:./db/geth.ipc
