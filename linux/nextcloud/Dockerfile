FROM nextcloud:29.0.1-apache@sha256:5e48add91754ef6148cfcd0f9b4ade5a4e22ec0b940f9bb83c99204e45187a53

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
