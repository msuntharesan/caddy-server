# Build your own image

```sh
$ docker build \
  --tag=mycaddy \
  .

$ docker run -d \
    -p 80:80 \
    --name 'caddy' \
    mycaddy
```
