#!/bin/bash

echo >&2 "Usage: ./build.sh <compiler> <file>"

IMAGE=blang/latex:ubuntu
exec docker run                 \
     --rm                       \
     -i                         \
     --user="$(id -u):$(id -g)" \
     --net=none                 \
     -v "$PWD":/data "$IMAGE" "$@"
