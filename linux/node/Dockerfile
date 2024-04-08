FROM ghcr.io/containerbase/base:10.3.12@sha256:d5498f499c2cf918c18165254e0d45309e0f831b3e6fb83f1bca60e619138681
LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.source="https://github.com/nodejs/node" \
    org.opencontainers.image.url="https://nodejs.org/"
 
RUN install-apt \
  rsync \
  ;

# renovate: datasource=node
RUN install-tool node 20.12.1

# renovate: datasource=npm
RUN install-tool corepack 0.26.0
