FROM node:lts-alpine
MAINTAINER "Eugene Nor inhuman.en@gmail.com"

RUN set -xe \
    && apk add --no-cache bash git openssh \
    && npm install -g npm \
    && git --version && bash --version && ssh -V && npm -v && node -v && yarn -v \
    && apk add openjdk8 maven=3.6.3-r0
