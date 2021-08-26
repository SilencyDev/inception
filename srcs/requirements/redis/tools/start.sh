sleep 10
redis-server /etc/redis/myredis.conf --daemonize yes
sleep 2
redis-cli -p 6379 monitor