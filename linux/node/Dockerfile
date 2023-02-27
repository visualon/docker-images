FROM ghcr.io/containerbase/buildpack:6.3.0@sha256:b04fd349a1562141276094036d105535df492ac11fd7d23f158c418686f34493
LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.source="https://github.com/nodejs/node" \
    org.opencontainers.image.url="https://nodejs.org/"
 
RUN install-apt \
  rsync \
  ;

# renovate: datasource=node
RUN install-tool node 18.14.2

# renovate: datasource=npm
RUN install-tool corepack 0.17.0
