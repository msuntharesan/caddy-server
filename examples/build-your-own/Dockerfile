FROM vanthiyathevan/caddy-server:latest

RUN mkdir -p /mysite/public

WORKDIR /mysite

COPY ./public /mysite/public
COPY ./Caddyfile /mysite/Caddyfile

CMD ["caddy", "--conf", "/mysite/Caddyfile"]
