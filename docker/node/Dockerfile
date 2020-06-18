FROM node:12.18.1-alpine@sha256:ce261771b70f36fb83d075a1f0f7d15d8d486a8aace2c60c4a1cd408d7a47d3f

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.source="https://github.com/VisualOn/docker-images" \
    org.opencontainers.image.url="https://github.com/VisualOn/docker-images"


RUN set -x \
    && apk add --no-cache \
        git \
        curl \
        bash \
        openjdk8-jre-base \
        python \
        make \
        g++ \
        dumb-init \
    && echo "done"

# renovate: datasource=npm depName=yarn
ENV YARN_VERSION=1.22.4
RUN set -x \
    && rm -f /usr/local/bin/yarn \
    && curl -o- -sL https://yarnpkg.com/install.sh | bash -s -- --version ${YARN_VERSION} \
    && export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH" \
    && echo -n "yarn: $(yarn --version)"

ENV PATH="/root/.yarn/bin:/root/.config/yarn/global/node_modules/.bin:$PATH"

# renovate: datasource=npm depName=pnpm
ENV PNPM_VERSION=5.1.8
RUN set -x \
    && curl -o- -sL https://unpkg.com/@pnpm/self-installer | node \
    && echo -n "pnpm: $(pnpm --version)"

ENTRYPOINT ["/usr/bin/dumb-init", "--"]
