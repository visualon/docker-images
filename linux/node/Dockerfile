FROM ghcr.io/containerbase/buildpack:4.17.0@sha256:8568c5698e4129f2ec1f93df6dbd3298d069791f53c5744314fdd9a8dbe7d334
LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.source="https://github.com/nodejs/node" \
    org.opencontainers.image.url="https://nodejs.org/"
 
RUN install-apt \
  rsync \
  ;

# renovate: datasource=node
RUN install-tool node 16.18.0

# renovate: datasource=npm
RUN install-tool corepack 0.14.2
