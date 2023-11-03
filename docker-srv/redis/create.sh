#!/bin/bash

docker run -d \
 --restart always \
 -m 2g \
 --memory-swap -1 \
 --log-opt max-size=10m \
 --privileged=true \
 -v /etc/localtime:/etc/localtime \
 --name redis \
 -p 6379:6379 \
 -v /docker-srv/redis/config/redis.conf:/usr/local/etc/redis/redis.conf \
 redis redis-server /usr/local/etc/redis/redis.conf
