FROM alpine:3.9

RUN apk add  --no-cache git python2 npm \
  && npm install @angular/cli@7.3.9 -g \
  && npm install node-sass@4.14.0 -g --unsafe-perm \
  && npm cache clean --force \
  && mkdir /app
