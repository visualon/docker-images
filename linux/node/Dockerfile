FROM ghcr.io/containerbase/base:9.17.3@sha256:c5814c3e74fdd88bede5ed66303617d3b82e11f0fbc30066bb1615af26126829
LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.source="https://github.com/nodejs/node" \
    org.opencontainers.image.url="https://nodejs.org/"
 
RUN install-apt \
  rsync \
  ;

# renovate: datasource=node
RUN install-tool node 18.17.1

# renovate: datasource=npm
RUN install-tool corepack 0.19.0
