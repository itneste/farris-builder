FROM node:alpine

RUN apk add --update git alpine-sdk python3 yarn \
  && yarn global add @angular/cli@7.3.9 \
  && ng config --global cli.packageManager yarn \
  && rm -rf /var/cache/apk/* \
  && npm cache clean --force \
  && yarn cache clean \
  && mkdir /apps 
