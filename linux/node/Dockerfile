FROM ghcr.io/containerbase/buildpack:4.13.2@sha256:a608e5c9784ec73cd4779d4fc6a2ae9214e3e42f7ebf1e3e66311b0523e94c69
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
