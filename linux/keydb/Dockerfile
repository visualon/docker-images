FROM eqalpha/keydb:x86_64_v6.3.1@sha256:07c714ff3f1fac97dbd048824fd9a52ba1bba508184879094173723769289f3d as base

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="keydb" \
    org.opencontainers.image.source="https://github.com/Snapchat/KeyDB" \
    org.opencontainers.image.url="https://keydb.dev"

ENTRYPOINT ["/usr/local/bin/dumb-init", "--", "docker-entrypoint.sh"]

# fetch dumbinit
FROM alpine:3.16@sha256:65a2763f593ae85fab3b5406dc9e80f744ec5b449f269b699b5efd37a07ad32e as fetch

# renovate: datasource=github-releases lookupName=Yelp/dumb-init
ARG DUMB_INIT_VERSION=v1.2.5

RUN set -ex; \
  wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/${DUMB_INIT_VERSION}/dumb-init_${DUMB_INIT_VERSION:1}_x86_64; \
  chmod +x /usr/local/bin/dumb-init; \
  true

# final
FROM base

COPY --from=fetch /usr/local/bin/dumb-init /usr/local/bin/dumb-init
