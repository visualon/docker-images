FROM ghcr.io/containerbase/buildpack:4.13.3@sha256:b557badce9756fe62e98cc90bb8a5dc30f7bd954d087281bf6696985db21a22e
LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.source="https://github.com/nodejs/node" \
    org.opencontainers.image.url="https://nodejs.org/"
 
RUN install-apt \
  rsync \
  ;

# renovate: datasource=node
RUN install-tool node 16.17.0

# renovate: datasource=npm
RUN install-tool corepack 0.13.0
