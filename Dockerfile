FROM node:14.9.0-alpine3.9

RUN apk add  --no-cache git python2 curl zip make g++ bash\
  && npm install @angular/cli@7.3.9 -g \
  && npm install yaml -g \
  && npm cache clean --force \
  && mkdir /app
