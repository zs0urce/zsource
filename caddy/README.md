# docker-caddy2

Caddy2 带插件镜像:

常用插件:
- [format-encoder](https://github.com/caddyserver/format-encoder) - Log encoder module for custom log formats
- [RealIP](https://github.com/kirsch33/realip) - forward real ip to Caddy (useful if you are behind Cloudflare)

DNS 插件:
- [cloudflare](https://github.com/caddy-dns/cloudflare)
- [digitalocean](https://github.com/caddy-dns/digitalocean)
- [route53](https://github.com/caddy-dns/route53)
- [duckdns](https://github.com/caddy-dns/duckdns)
- [namecheap](https://github.com/caddy-dns/namecheap)
- [alidns](https://github.com/caddy-dns/alidns)
- [dnspod](https://github.com/caddy-dns/dnspod)

pull the image:

`docker pull zsource/caddy:2.5.2-alpine`
