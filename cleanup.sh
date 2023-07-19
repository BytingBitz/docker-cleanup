#!/bin/sh

while true; do
    docker image prune -a -f
    sleep 86400 # 24 hours
done
