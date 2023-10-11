FROM ghcr.io/containerbase/base:9.20.13@sha256:9d5c018646811190c6eae482ac7d8be90f3817378903f57b3fe6d9616e7fe8f4
LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.source="https://github.com/nodejs/node" \
    org.opencontainers.image.url="https://nodejs.org/"
 
RUN install-apt \
  rsync \
  ;

# renovate: datasource=node
RUN install-tool node 18.18.1

# renovate: datasource=npm
RUN install-tool corepack 0.20.0
