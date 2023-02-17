FROM ghcr.io/containerbase/buildpack:6.1.4@sha256:84ac72438f0d9a39ab820b009c1ae3c75e322e334b5249a5fc9f75c928712fbf
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
