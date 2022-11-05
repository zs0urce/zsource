FROM caddy:2.5.2-builder-alpine AS builder

RUN xcaddy build \
  --with github.com/caddyserver/transform-encoder \
  --with github.com/kirsch33/realip \
  --with github.com/caddy-dns/cloudflare \
  --with github.com/caddy-dns/digitalocean \
  --with github.com/caddy-dns/route53 \
  --with github.com/caddy-dns/duckdns \
  --with github.com/caddy-dns/namecheap \
  --with github.com/caddy-dns/alidns \
  --with github.com/caddy-dns/dnspod


FROM caddy:2.5.2-alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy

CMD ["caddy", "run", "--environ", "--config", "/etc/caddy/Caddyfile", "--adapter", "caddyfile"]