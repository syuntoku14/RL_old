#!/usr/bin/env bash
docker run --rm -it -v $1:/logs -p 6006:6006 tensorboard
