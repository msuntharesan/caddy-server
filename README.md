# Minimal caddy server Docker Image

Minimal docker image for [caddy server](https://caddyserver.com/). This is based on [alpine:edge](https://hub.docker.com/_/alpine/) image and includes all the caddy addons.

## Usage
Using default Caddyfile

```
$ docker run -d \
    -p 80:80 \
    -v ./public:/var/www/html \
    vanthiyathevan/caddy-server
```

To use with your own Caddyfile

```
$ docker run -d \
    -p 80:80 \
    -v ./public:/var/www/html \
    -v ./Caddyfile:/etc/Caddyfile \
    vanthiyathevan/caddy-server
```


With [tls](https://caddyserver.com/docs/tls) directive, you can tell caddy to generate automatic SSL certificates from [Let's Encrypt](https://letsencrypt.org/). Caddy by default store the certificate to `/root/.caddy` inside the container. To persist the certificates,
 
```
$ docker run -d \
    -p 80:80 \
    -p 443:443 \
    -v ./public:/var/www/html \
    -v ./Caddyfile:/etc/Caddyfile \
    -v ./.caddy:/root/.caddy \
    vanthiyathevan/caddy-server
```


## Inspired by

> https://github.com/ZZROTDesign/alpine-caddy
