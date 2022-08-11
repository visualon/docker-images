FROM ghcr.io/containerbase/buildpack:4.10.0@sha256:97be66af4ffb3a3d1be000f6cf5f8a866b6ae6a8f93fe592ef8f908afce38b30
LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.source="https://github.com/nodejs/node" \
    org.opencontainers.image.url="https://nodejs.org/"
 
RUN install-apt \
  rsync \
  ;

# renovate: datasource=node
RUN install-tool node 16.16.0

# renovate: datasource=npm
RUN install-tool corepack 0.12.2
