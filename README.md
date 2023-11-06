# VPS Docker Cleanup Utility

***
# About

This is a simple repository for a tool built to run on a server and prune hanging docker files (except containers) every 24 hours. Its life purposes does not extend beyond this objective, it doesn't exist to do anything else. As Rick would say, it passes butter. Here is the bash script it runs:

```bash
#!/bin/sh

while true; do
    # Prune everything that is not actively in use, except containers
    docker network prune -f
    docker image prune -f
    docker volume prune -f
    docker builder prune -f
    sleep 86400 # Execute once every 24 hours
done
```
 
***
# License

MIT LICENSE.
