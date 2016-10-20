FROM alpine:edge
MAINTAINER Suntharesan Mohan <mohan.kethees@gmail.com>

ENV CADDY_VERSION=v0.9.3

RUN apk add --no-cache tini git \
    && apk add --no-cache --virtual .build_tools wget tar bash \
    && wget -qO- https://getcaddy.com \
      | bash -s realip,git,locale,minify,ipfilter,search,jwt,filemanager,hugo,mailout,prometheus \
    && apk del --purge .build_tools \
    && rm -rf \
      /etc/ssl \
      /usr/share/doc \
      /usr/share/man \
      /tmp/* \
      /var/cache/apk/* 

COPY ./Caddyfile /etc/Caddyfile

VOLUME ["/var/www/html", "/root/.caddy"]
EXPOSE 80 443 2015

ENTRYPOINT ["/sbin/tini", "--"]
CMD ["caddy", "--conf", "/etc/Caddyfile"]
