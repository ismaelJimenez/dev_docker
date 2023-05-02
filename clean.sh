#!/usr/bin/env bash

dockerId="dev"

if [ "$(docker ps -a -q -f name=$dockerId)" ]; then
  docker stop $dockerId
  docker rm -f $dockerId
  docker rmi -f $dockerId
else
  echo "Container $dockerId does not exists"
fi
