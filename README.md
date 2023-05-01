# le-cert-maker
Configurable letsencrypt certificate generator for multiple service usage

Initial setup:
```s
docker compose run --entrypoint certbot --rm -it certbot certonly
# follow the steps and make sure it works, then:
# When using webroot, use path /webroot
docker compose up -d
```