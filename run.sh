#!/usr/bin/env bash

docker run -it \
  --name dev \
  -u dev \
  -v ~/Documents/Workspace:/home/dev/workspace \
  dev
