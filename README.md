# VPS Docker Cleanup Utility

***
# About

This is a simply repository for a tool built to run on a server and prune all hanging docker images every 24 hours. Its life purposes does not extend beyond this objective, it doesn't exist to do anything else. Here is the bash script it runs:

```bash
#!/bin/sh

while true; do
    docker image prune -a -f
    sleep 86400 # 24 hours
done
```

***
# License

MIT LICENSE.
