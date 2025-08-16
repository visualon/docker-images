FROM nextcloud:31.0.8-apache@sha256:25b7e083b03acf9e9bf1176212235ca086c865e64f03dd076ea92235a8615518

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
