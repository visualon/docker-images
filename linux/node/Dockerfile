FROM ghcr.io/containerbase/buildpack:6.2.0@sha256:dcc70faff7e490c640c52f891cc2d030027b5583435f94917e691bebc7e85c52
LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.source="https://github.com/nodejs/node" \
    org.opencontainers.image.url="https://nodejs.org/"
 
RUN install-apt \
  rsync \
  ;

# renovate: datasource=node
RUN install-tool node 18.14.1

# renovate: datasource=npm
RUN install-tool corepack 0.16.0
