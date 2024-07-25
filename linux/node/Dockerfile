FROM ghcr.io/containerbase/base:11.1.0@sha256:b8afd77f2618d55cd4bbd8a1e59849603f37668450736e7fa48008480ddc421b
LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.source="https://github.com/nodejs/node" \
    org.opencontainers.image.url="https://nodejs.org/"
 
RUN install-apt \
  rsync \
  ;

# renovate: datasource=node
RUN install-tool node 20.16.0

# renovate: datasource=npm
RUN install-tool corepack 0.29.3
