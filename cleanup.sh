#!/bin/sh

while true; do
    # Prune everything that is not actively in use, except containers
    docker network prune -f > /dev/null 2>&1
    docker image prune -f > /dev/null 2>&1
    docker volume prune -f > /dev/null 2>&1
    docker builder prune -f > /dev/null 2>&1
    sleep 86400 # Execute once every 24 hours
done