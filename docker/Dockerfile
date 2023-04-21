FROM alpine:latest as builder
ARG BASENAME
ENV BASENAME=$BASENAME

RUN apk add git nodejs npm

RUN npm install npm@latest -g

RUN git clone https://github.com/lsu-ub-uu/diva-react-spa-bff.git

WORKDIR diva-react-spa-bff

RUN git status

RUN git pull

RUN git log --name-status HEAD^..HEAD

RUN npm install

RUN npm run build

FROM node:18

COPY . .