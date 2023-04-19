#!/bin/bash

docker run --restart=unless-stopped -d\
    --name diva-react-spa-bff-dev \
    -p 9876:80 \
    diva-react-spa-bff:latest $1