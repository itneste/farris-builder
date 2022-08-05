FROM node:alpine

RUN apk add --update git \
  && npm install @angular/cli@@7.3.9 -g \
  && rm -rf /var/cache/apk/* \
  && npm cache clean --force \
  && mkdir /apps 
