FROM ghcr.io/containerbase/base:13.0.22@sha256:9cb70d95d15d4c5f436e6c66e159f2c554b81b4ec8bf0c43343622fc7e9720e7
LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.source="https://github.com/nodejs/node" \
    org.opencontainers.image.url="https://nodejs.org/"
 
RUN install-apt \
  rsync \
  ;

# renovate: datasource=node
RUN install-tool node 22.11.0

# renovate: datasource=npm
RUN install-tool corepack 0.30.0
