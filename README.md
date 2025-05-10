# le-cert-maker
Configurable letsencrypt certificate generator for multiple service usage

Initial setup:
```s
docker compose run --entrypoint certbot --rm -it certbot certonly
# follow the steps and make sure it works, then:
# When using webroot, use path /webroot
docker compose up -d
```

# With OVH provider:
See documentation here: https://certbot-dns-ovh.readthedocs.io/en/stable/#credentials

```s
docker compose run --rm --entrypoint sh certbot
certbot certonly --dns-ovh --dns-ovh-credentials /root/.auth.ini -d "*.your-domain.xyz"
# Follow on-screen instructions for one time run setup
exit
docker compose up -d
```
