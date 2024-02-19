FROM ghcr.io/containerbase/base:10.1.1@sha256:cdbf93e77063f821855b86ed138070435dfda5aed05b3cf1048e9ba705592a7c
LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.source="https://github.com/nodejs/node" \
    org.opencontainers.image.url="https://nodejs.org/"
 
RUN install-apt \
  rsync \
  ;

# renovate: datasource=node
RUN install-tool node 20.11.1

# renovate: datasource=npm
RUN install-tool corepack 0.24.1
