# Caddy server with addons

[alpine:edge](https://hub.docker.com/_/alpine/) based docker image for [caddy server](https://caddyserver.com/). Includes all the caddy addons.

## Usage

Using default Caddyfile

```sh
$ docker run -d \
    -p 80:80 \
    -v ${PWD}/public:/var/www/html \
    vanthiyathevan/caddy-server
```

To use with your own Caddyfile

```sh
$ docker run -d \
    -p 80:80 \
    -v ${PWD}/public:/var/www/html \
    -v ${PWD}/Caddyfile:/etc/Caddyfile \
    vanthiyathevan/caddy-server
```


With [tls](https://caddyserver.com/docs/tls) directive, you can tell caddy to generate automatic SSL certificates from [Let's Encrypt](https://letsencrypt.org/). Caddy by default store the certificate to `/root/.caddy` inside the container. To persist the certificates,

```sh
$ docker run -d \
    -p 80:80 \
    -p 443:443 \
    -v ${PWD}/public:/var/www/html \
    -v ${PWD}/Caddyfile:/etc/Caddyfile \
    -v ~/.caddy:/root/.caddy \
    vanthiyathevan/caddy-server
```


## Inspired by

> [ZZROTDesign/alpine-caddy
](https://github.com/ZZROTDesign/alpine-caddy)
