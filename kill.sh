#ps -ef|grep geth|grep -v grep|cut -c 9-15|xargs kill -9
killall -9 geth
