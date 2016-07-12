FROM alpine:3.3

RUN apk add --update nodejs ruby ruby-rdoc ruby-irb ca-certificates netcat-openbsd git openssh bash perl \
  && npm install -g grunt-cli gulp-cli \
  && gem install web_translate_it \
  && apk upgrade \
  && apk del --purge tar xz && rm -Rf /var/cache/apk/*
