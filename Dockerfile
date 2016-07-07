FROM alpine:3.3

RUN apk add --update nodejs ruby ca-certificates netcat-openbsd git openssh bash perl \
  && npm install -g grunt-cli \
  && gem intall web_translate_it \
  && apk upgrade \
  && apk del --purge tar xz curl && rm -Rf /var/cache/apk/*
