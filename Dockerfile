FROM node:alpine

RUN apk add --update git python yarn \
  && yarn global add @angular/cli@@@7.3.9 \
  && rm -rf /var/cache/apk/* \
  && npm cache clean --force \
  && mkdir /apps 
