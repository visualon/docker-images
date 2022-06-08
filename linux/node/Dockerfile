FROM ghcr.io/containerbase/buildpack:3.17.5@sha256:a2f498501eeba52563dd290c75a5ec5eff767ae534564502ca3ef3306e53f488
LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.source="https://github.com/nodejs/node" \
    org.opencontainers.image.url="https://nodejs.org/"
 
RUN install-apt \
  rsync \
  ;

# renovate: datasource=node
RUN install-tool node 16.15.1

# renovate: datasource=npm
RUN install-tool corepack 0.10.0
