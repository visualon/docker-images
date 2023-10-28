FROM ghcr.io/containerbase/base:9.23.8@sha256:c55f74e486fa74dde672f971b8025a13c4119bdda177363cfca600595a900117
LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.source="https://github.com/nodejs/node" \
    org.opencontainers.image.url="https://nodejs.org/"
 
RUN install-apt \
  rsync \
  ;

# renovate: datasource=node
RUN install-tool node 18.18.2

# renovate: datasource=npm
RUN install-tool corepack 0.22.0
