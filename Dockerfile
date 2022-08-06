FROM node:14.20.0

RUN apt install git python2 \
  && npm install @angular/cli@7.3.9 \
  && npm cache clean --force \
  && mkdir /app
