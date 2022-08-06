FROM node:14.20.0

RUN apt install git alpine-sdk python2 yarn \
  && yarn global add @angular/cli@7.3.9 \
  && ng config --global cli.packageManager yarn \
  && rm -rf /var/cache/apk/* \
  && npm cache clean --force \
  && yarn cache clean \
  && mkdir /apps 
