FROM ghcr.io/containerbase/base:11.11.19@sha256:c49769b684f76e0c940e75eb280bae9c74f1757a008908d9812ad9e0e6aded9d
LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.source="https://github.com/nodejs/node" \
    org.opencontainers.image.url="https://nodejs.org/"
 
RUN install-apt \
  rsync \
  ;

# renovate: datasource=node
RUN install-tool node 20.17.0

# renovate: datasource=npm
RUN install-tool corepack 0.29.4
