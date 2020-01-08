FROM node:lts-alpine@sha256:fe2cd1b5a9faf21497b73b37f24ad391ac39e72167e435217e9009c836e6da5d

RUN set -x \
    && apk add --no-cache \
        git \
        curl \
        bash \
        openjdk8-jre-base \
        python \
        make \
        g++ \
    && echo "done"

# yarn
ENV YARN_VERSION=1.17.3
RUN set -x \
    && rm -f /usr/local/bin/yarn \
    && curl -o- -sL https://yarnpkg.com/install.sh | bash -s -- --version ${YARN_VERSION} \
    && export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH" \
    && echo -n "yarn: " \
    && yarn --version

ENV PATH="/root/.yarn/bin:/root/.config/yarn/global/node_modules/.bin:$PATH"

# pnpm
ENV PNPM_VERSION=3.8.1
RUN set -x \
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
