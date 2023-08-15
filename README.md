# VPS Docker Cleanup Utility

***
# About

This is a simple repository for a tool built to run on a server and prune all hanging docker images every 24 hours. Its life purposes does not extend beyond this objective, it doesn't exist to do anything else. As Rick would say, it passes butter. Here is the bash script it runs:

```bash
#!/bin/sh

while true; do
    docker image prune -a -f
    docker system prune # finish
    sleep 86400 # 24 hours
done
```
 
***
# License

MIT LICENSE.
