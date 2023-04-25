#!/bin/bash

BASENAME=${1:-'/'}
VERSION=${2:-'latest'}
CORA_API_URL=${3:-'CORA_API_URL'}

TAG=diva-react-spa-bff

echo Building diva-react-spa-bff with BASENAME $BASENAME and VERSION $VERSION and CORA_API_URL $CORA_API_URL

docker build --no-cache --pull=false \
    --build-arg BASENAME=$BASENAME \
    --build-arg CORA_API_URL=$CORA_API_URL \
    -t $TAG ./docker