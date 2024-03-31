FROM ghcr.io/containerbase/base:10.3.9@sha256:f6984b7e337407853c27b36c0f2b955edeb41d0f5d94d60e33cea930b6a17225
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
