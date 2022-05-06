FROM node:16.15.0-alpine@sha256:e20f90906aa052de28a41923073eb87e9e0384b9bf1d0d4eab698c4de3dd7df8

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.source="https://github.com/nodejs/node" \
    org.opencontainers.image.url="https://nodejs.org/"


RUN set -x \
    && apk add --no-cache \
        git \
        curl \
        bash \
        openjdk8-jre-base \
        python3 \
        make \
        g++ \
        dumb-init \
    && echo "done"

RUN corepack enable

ENV PATH="/root/.yarn/bin:/root/.config/yarn/global/node_modules/.bin:$PATH"

ENTRYPOINT ["/usr/bin/dumb-init", "--"]
