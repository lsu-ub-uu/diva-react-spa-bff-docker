#!/bin/bash

BASENAME=${1:-'/'}
VERSION=${2:-'latest'}

TAG=diva-react-spa-bff

echo Building diva-react-spa-bff with BASENAME $BASENAME and VERSION $VERSION

docker build --no-cache --pull \
    --build-arg BASENAME=$BASENAME \
    -t $TAG ./docker