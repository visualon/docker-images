FROM eqalpha/keydb:x86_64_v6.3.3@sha256:6396b5ad495437ce368a832e114d3007c070007e4f84d4c8feb1240fcd1f23c6 as base

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="keydb" \
    org.opencontainers.image.source="https://github.com/Snapchat/KeyDB" \
    org.opencontainers.image.url="https://keydb.dev"

ENTRYPOINT ["/usr/local/bin/dumb-init", "--", "docker-entrypoint.sh"]

# fetch dumbinit
FROM alpine:3.20@sha256:0a4eaa0eecf5f8c050e5bba433f58c052be7587ee8af3e8b3910ef9ab5fbe9f5 as fetch

# renovate: datasource=github-releases packageName=Yelp/dumb-init
ARG DUMB_INIT_VERSION=v1.2.5

RUN set -ex; \
  wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/${DUMB_INIT_VERSION}/dumb-init_${DUMB_INIT_VERSION:1}_x86_64; \
  chmod +x /usr/local/bin/dumb-init; \
  true

# final
FROM base

# fake to support https://github.com/Enapter/charts/issues/50
RUN set -wx; \
  echo '#!/bin/sh' > /usr/local/sbin/keydb-server; \
  echo 'set -e' >> /usr/local/sbin/keydb-server; \
  echo 'exec dumb-init -- /usr/local/bin/keydb-server "$@"' >> /usr/local/sbin/keydb-server; \
  chmod +x /usr/local/sbin/keydb-server; \
  true

COPY --from=fetch /usr/local/bin/dumb-init /usr/local/bin/dumb-init
