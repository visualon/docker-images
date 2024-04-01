FROM ghcr.io/containerbase/base:10.3.10@sha256:474c09d6df0bc12220fa0aa59ed6eef98db09c9613db4678ab3698d19bd23375
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
