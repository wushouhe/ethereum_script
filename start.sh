nohup  geth  --cache=512  --datadir "./db"  --rpc --rpcaddr=0.0.0.0 --rpccorsdomain "*" --nodiscover --maxpeers 30  --networkid 1981 --ipcapi "db,eth,net,web3,personal,admin,eth,miner" --rpcapi "eth,net,web3,personal,admin,shh,txpool,debug,miner" --mine --minerthreads 1   --etherbase "0xeb680f30715f347d4eb5cd03ac5eced297ac5046" --gpomin 0 --gpomax 0 --gpofull 0 --gpobasedown 0 --gpobaseup 0 --gpobasecf 0 --gasprice 0   --unlock "71edb68e3a821075f80fbf8afbe140585df1dce3" --password ./pwd.password --verbosity 5 >> gethrun.log 2>&1 &

sleep 1s
geth --exec 'loadScript("script.js")' attach ipc:./db/geth.ipc
