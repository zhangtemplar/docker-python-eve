# Dockerized [python-eve][1]
[![Docker Stars](https://img.shields.io/docker/stars/nicolaevladescu/python-eve.svg)](https://hub.docker.com/r/nicolaevladescu/python-eve/)
[![Docker Pulls](https://img.shields.io/docker/pulls/nicolaevladescu/python-eve.svg)](https://hub.docker.com/r/nicolaevladescu/python-eve/)

## What's inside
* [Alpine Linux][2]
* [dumb-init][3]
* [gosu][4]
* `curl`
* `gnupg`
* `python`

## Tags
1. `2.7` : [(2.7.12/Dockerfile)](2.7.12/Dockerfile)
2. `3.5` : [(3.5.2/Dockerfile)](3.5.2/Dockerfile)

## To-do
* Replace `gosu` with `su-exec` using the package manager `apk add --no-cache 'su-exec>=0.2'`

[1]: http://python-eve.org
[2]: https://www.alpinelinux.org
[3]: https://github.com/Yelp/dumb-init
[4]: https://github.com/tianon/gosu