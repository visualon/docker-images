FROM eqalpha/keydb:x86_64_v6.3.1@sha256:07c714ff3f1fac97dbd048824fd9a52ba1bba508184879094173723769289f3d as base

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="keydb" \
    org.opencontainers.image.source="https://github.com/Snapchat/KeyDB" \
    org.opencontainers.image.url="https://keydb.dev"

ENTRYPOINT ["/usr/local/bin/dumb-init", "--", "docker-entrypoint.sh"]

# fetch dumbinit
FROM alpine:3.19@sha256:51b67269f354137895d43f3b3d810bfacd3945438e94dc5ac55fdac340352f48 as fetch

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
