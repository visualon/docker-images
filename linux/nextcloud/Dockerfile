FROM nextcloud:34.0.4-apache@sha256:72f5cc3347042dd5dcad72edc376b19d0e042194af344a549820affd04804c8f

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
