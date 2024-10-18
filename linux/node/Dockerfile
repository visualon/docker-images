FROM ghcr.io/containerbase/base:12.0.7@sha256:f6dc1a4b29c4bef61fb33eea223a955d16be356cabce58ba86fad7709c50d817
LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.source="https://github.com/nodejs/node" \
    org.opencontainers.image.url="https://nodejs.org/"
 
RUN install-apt \
  rsync \
  ;

# renovate: datasource=node
RUN install-tool node 20.18.0

# renovate: datasource=npm
RUN install-tool corepack 0.29.4
