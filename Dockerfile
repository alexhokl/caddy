FROM docker.io/caddy:2.7-builder-alpine AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/googleclouddns

FROM docker.io/caddy:2.7-alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
