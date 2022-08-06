FROM alpine:3.9

RUN apk add  --no-cache git python2 npm \
  && npm install @angular/cli@7.3.9 -g \
  && npm cache clean --force \
  && mkdir /app
