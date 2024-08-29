FROM alpine:3.9

RUN apk add  --no-cache git python2 npm curl zip nodejs make g++ bash\
  && npm install @angular/cli@7.3.9 -g \
  && npm install yaml -g \
  && npm install -g  node-sass@4.13.1 --unsafe-perm \
  && npm cache clean --force \
  && mkdir /app
