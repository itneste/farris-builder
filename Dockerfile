FROM node:14-slim

RUN apk add --update git alpine-sdk python yarn \
  && yarn global add @angular/cli@7.3.9 \
  && ng config --global cli.packageManager yarn \
  && rm -rf /var/cache/apk/* \
  && npm cache clean --force \
  && yarn cache clean \
  && mkdir /apps 
