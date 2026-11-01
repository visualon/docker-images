FROM nextcloud:35.0.2-apache@sha256:e0b1a2af52c82c07b7a0e8e59878bd8769e704447734d5d238a836982f51b9c8

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
  name="nextcloud" \
  org.opencontainers.image.source="https://github.com/nextcloud/server" \
  org.opencontainers.image.url="https://nextcloud.com/"

RUN apt-get update && apt-get install -y --no-install-recommends \
  libbz2-1.0 \
  libbz2-dev; \
  docker-php-ext-install -j$(nproc) bz2; \
  apt-mark auto libbz2-dev > /dev/null; \
  apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; \
  rm -rf /var/lib/apt/lists/*
