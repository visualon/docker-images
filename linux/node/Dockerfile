FROM ghcr.io/containerbase/buildpack:6.1.5@sha256:29ad7c34b790d31c627a76d97b6c90c9f0e02d4bf5d77986db581402e74bb609
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
RUN install-tool corepack 0.15.3
