FROM nextcloud:32.0.6-apache@sha256:46968af61c1eceb236857e22981023507fe892ecf7703d7883618d938504df9d

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
