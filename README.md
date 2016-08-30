# Dockerized [python-eve][1]
[![Docker Stars](https://img.shields.io/docker/stars/nicolaevladescu/python-eve.svg)](https://hub.docker.com/r/nicolaevladescu/python-eve/)
[![Docker Pulls](https://img.shields.io/docker/pulls/nicolaevladescu/python-eve.svg)](https://hub.docker.com/r/nicolaevladescu/python-eve/)

## What's inside
* [Alpine Linux][2]
* [dumb-init][3]
* [gosu][4]
* `python2` or `python3` depending on the tag you choose

## Tags
1. `2.7` : [(2.7.12/Dockerfile)](2.7.12/Dockerfile)
2. `3.5` : [(3.5.2/Dockerfile)](3.5.2/Dockerfile)


## Usage
Pull it from the official docker registry:

`docker pull nicolaevladescu/python-eve:<tag>`

Test that python is installed and working:

`docker run --rm --name python-eve nicolaevladescu/python-eve:2.7 python --version`

The default `CMD` runs a `python main.py` from `/src`.

You can mount a folder from the host to `/src` and run it with the default `CMD`.

`docker run --detach --volume $(pwd):/src --name python-eve nicolaevladescu/python-eve:2.7`

Or run a file other than `main.py`:

`docker run --detach --volume $(pwd):/src --name python-eve nicolaevladescu/python-eve:2.7 python run.py`

## To-do
* Replace `gosu` with `su-exec` because it's only 10kb instead of 1.8MB. Use the alpine linux package manager (`apk add --no-cache 'su-exec>=0.2'`)

[1]: http://python-eve.org
[2]: https://www.alpinelinux.org
[3]: https://github.com/Yelp/dumb-init
[4]: https://github.com/tianon/gosu