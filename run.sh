#!/usr/bin/env bash

dockerId="dev"

if [ ! "$(docker ps -a -q -f name=$dockerId)" ]; then
  docker run -it \
    --name $dockerId \
    -u $dockerId \
    -v ~/Documents/Workspace:/home/dev/workspace \
    -e DISPLAY=$DISPLAY \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    $dockerId
else
  if [ "$(docker ps -aq -f status=exited -f name=$dockerId)" ]; then
    docker start dev
    docker exec -it dev zsh
  else
    docker attach dev
  fi
fi
