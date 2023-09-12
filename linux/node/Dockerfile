FROM ghcr.io/containerbase/base:9.20.1@sha256:0665c05d3498f20036435bc21c1c9b681eeacd26b2a884ab5c1e0a776d87ee8f
LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.source="https://github.com/nodejs/node" \
    org.opencontainers.image.url="https://nodejs.org/"
 
RUN install-apt \
  rsync \
  ;

# renovate: datasource=node
RUN install-tool node 18.17.1

# renovate: datasource=npm
RUN install-tool corepack 0.20.0
