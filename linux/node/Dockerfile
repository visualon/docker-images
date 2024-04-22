FROM ghcr.io/containerbase/base:10.3.16@sha256:53e15cc9c5b3d509cd24168cb3f5aca03be66a08f2668fc80ee6d75b661e69bb
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
