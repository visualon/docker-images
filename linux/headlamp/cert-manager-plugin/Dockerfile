# renovate: datasource=github-releases depName=headlamp-cert-manager-plugin packageName=headlamp-k8s/plugins
ARG PLUGIN_VERSION=0.1.0

FROM public.ecr.aws/docker/library/busybox:1.37.0

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="verdaccio" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.source="https://github.com/headlamp-k8s/plugins" \
    org.opencontainers.image.url="https://headlamp.dev"

ARG PLUGIN_VERSION

RUN set -ex; \
  mkdir /plugins/; \
  wget -O plugin.tar.gz https://github.com/headlamp-k8s/plugins/releases/download/cert-manager-${PLUGIN_VERSION}/headlamp-k8s-cert-manager-${PLUGIN_VERSION}.tar.gz; \
  tar -C /plugins/ -xf plugin.tar.gz ; \
  rm  plugin.tar.gz; \
  ls -la /plugins; \
  true


LABEL org.opencontainers.image.version="${PLUGIN_VERSION}"
