FROM ghcr.io/containerbase/buildpack:6.0.8@sha256:af57a931fef16aad96f22e8c3b9d34047a4280223b9871638e87a5cc1eca47e0
LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.source="https://github.com/nodejs/node" \
    org.opencontainers.image.url="https://nodejs.org/"
 
RUN install-apt \
  rsync \
  ;

# renovate: datasource=node
RUN install-tool node 18.13.0

# renovate: datasource=npm
RUN install-tool corepack 0.15.3
