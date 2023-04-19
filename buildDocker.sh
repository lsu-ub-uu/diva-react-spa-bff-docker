#!/bin/bash

BASENAME=${1:-'/'}
VERSION=${2:-'latest'}

TAG=diva-react-spa-bff-docker

echo Building diva-react-spa-bff-docker with BASENAME $BASENAME and VERSION $VERSION

docker build --no-cache --pull \
    --build-arg BASENAME=$BASENAME \
    -t $TAG ./docker