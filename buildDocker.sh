#!/bin/bash
TAG=diva-react-spa-bff

echo Building $TAG

docker build --no-cache --pull=false \
    -t $TAG ./docker