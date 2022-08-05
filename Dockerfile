FROM node:alpine

RUN apk add --update git yarn \
  && npm install @angular/cli@7.3.9 \
  && rm -rf /var/cache/apk/*

RUN mkdir /apps
