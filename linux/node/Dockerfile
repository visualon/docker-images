FROM ghcr.io/containerbase/buildpack:4.13.0@sha256:46f4c73cda8fefcdbddcb26714a8a43db6b3489397d931059e3eb3bb4a510377
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
