FROM alpine:3.7

RUN \
  mkdir -p /aws && \
  echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories && \
  apk update && apk -Uuv add groff less python py-pip bash jq openssl tzdata git terraform && \
  pip install awscli && \
  apk --purge -v del py-pip && \
  rm /var/cache/apk/*

WORKDIR /aws