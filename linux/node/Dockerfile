FROM ghcr.io/containerbase/base:10.3.14@sha256:24e5856a7f867bc9dbc7b1280f2458a732f2a70a8128e034cdbd0f74c2f86452
LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.source="https://github.com/nodejs/node" \
    org.opencontainers.image.url="https://nodejs.org/"
 
RUN install-apt \
  rsync \
  ;

# renovate: datasource=node
RUN install-tool node 20.12.2

# renovate: datasource=npm
RUN install-tool corepack 0.26.0
