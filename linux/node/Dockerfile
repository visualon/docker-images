FROM node:14.19.0-alpine@sha256:9a2aa545388a135b496bd55cef2be920b96c4526c99c140170e05a8de3fce653

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

# renovate: datasource=npm depName=yarn
ENV YARN_VERSION=1.22.17
RUN set -x \
    && rm -f /usr/local/bin/yarn \
    && curl -o- -sL https://yarnpkg.com/install.sh | bash -s -- --version ${YARN_VERSION} \
    && export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH" \
    && echo -n "yarn: $(yarn --version)"

ENV PATH="/root/.yarn/bin:/root/.config/yarn/global/node_modules/.bin:$PATH"

# renovate: datasource=npm depName=pnpm
ENV PNPM_VERSION=6.32.0
RUN set -x \
    && curl -o- -sL https://unpkg.com/@pnpm/self-installer | node \
    && echo -n "pnpm: $(pnpm --version)"

ENTRYPOINT ["/usr/bin/dumb-init", "--"]
