#!/bin/sh

while true; do
    docker image prune -a -f
    docker system prune -a -f
    docker network prune
    sleep 86400 # 24 hours
done
