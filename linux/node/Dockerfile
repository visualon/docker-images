FROM ghcr.io/containerbase/base:10.3.11@sha256:d22ed08f962c8adae5a146ca4c37a7711475f64af1da1f9af59f976b289ddecb
LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.source="https://github.com/nodejs/node" \
    org.opencontainers.image.url="https://nodejs.org/"
 
RUN install-apt \
  rsync \
  ;

# renovate: datasource=node
RUN install-tool node 20.12.0

# renovate: datasource=npm
RUN install-tool corepack 0.26.0
