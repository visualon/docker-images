FROM ghcr.io/containerbase/base:9.23.14@sha256:eabe5abf590b520d274c1bebed69042e733aa17612470899388f5144ae1f8531
LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.source="https://github.com/nodejs/node" \
    org.opencontainers.image.url="https://nodejs.org/"
 
RUN install-apt \
  rsync \
  ;

# renovate: datasource=node
RUN install-tool node 20.9.0

# renovate: datasource=npm
RUN install-tool corepack 0.23.0
