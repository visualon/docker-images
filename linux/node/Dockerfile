FROM ghcr.io/containerbase/base:10.15.5@sha256:c8d2b91d587cd209a4efec035ba81c0e25168a6417a7766da703ad63abe7ef7a
LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.source="https://github.com/nodejs/node" \
    org.opencontainers.image.url="https://nodejs.org/"
 
RUN install-apt \
  rsync \
  ;

# renovate: datasource=node
RUN install-tool node 20.15.1

# renovate: datasource=npm
RUN install-tool corepack 0.29.2
