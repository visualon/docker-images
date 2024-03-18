FROM ghcr.io/containerbase/base:10.3.3@sha256:2229a04d052999d2e46439dd735a7a64ac1b250f82148a2df9338054014dd289
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
RUN install-tool corepack 0.26.0
