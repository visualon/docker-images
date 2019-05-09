FROM node:lts-alpine

RUN set -x \
    && apk add --no-cache \
        git \
        curl

# yarn
ENV YARN_VERSION=1.15.2
RUN set -x \
    curl -o- -sL https://yarnpkg.com/install.sh | bash -s -- --version ${YARN_VERSION} \
    && echo -n "yarn: " \
    && yarn --version

# pnpm
ENV PNPM_VERSION=3.3.0
RUN set -x \
    && rm -f /usr/local/bin/yarn \
    && curl -o- -sL https://unpkg.com/@pnpm/self-installer | node \
    && echo -n "pnpm: " \
    && pnpm --version

# metadata
ARG APPVEYOR_REPO_COMMIT
ARG APPVEYOR_BUILD_VERSION

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.revision="$APPVEYOR_REPO_COMMIT" \
    org.opencontainers.image.source="https://github.com/VisualOn/docker-images" \
    org.opencontainers.image.url="https://github.com/VisualOn/docker-images" \
    org.opencontainers.image.version="$APPVEYOR_BUILD_VERSION"
