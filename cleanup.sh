#!/bin/sh

while true; do
    # Prune everything that is not actively in use, except containers
    # docker container prune -f
    docker network prune -f
    docker image prune -f
    docker volume prune -f
    docker builder prune -f
    sleep 86400 # Execute once every 24 hours
done
