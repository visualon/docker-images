FROM ghcr.io/containerbase/buildpack:3.17.6@sha256:e97ba9ba67626725da4c9ce404711d80ce9b209177a608ef43ac97caeeab64dc
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
