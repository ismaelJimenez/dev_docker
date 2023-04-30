#!/usr/bin/env bash

docker build . -t dev --build-arg UID=$(id -u) --build-arg GID=$(id -g)
