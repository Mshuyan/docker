#!/bin/bash

docker run -d \
 --restart always \
 -m 2g \
 --memory-swap -1 \
 --log-opt max-size=10m \
 --privileged=true \
 -v /etc/localtime:/etc/localtime \
 --name rabbitmq \
 -p 5672:5672 \
 -p 15672:15672 \
  -v /docker-srv/rabbitmq/config/rabbitmq.conf:/etc/rabbitmq/rabbitmq.conf \
 rabbitmq:3.8.16-management-alpine
