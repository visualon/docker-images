FROM node:24.22.1-alpine@sha256:6a1c190e17215d844926b0677f4bf87273ff7d5e54db06d3b5b5863ab0b09a3d AS base

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="verdaccio" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.source="https://github.com/verdaccio/verdaccio" \
    org.opencontainers.image.url="https://verdaccio.org"


ENV VERDACCIO_APPDIR=/opt/verdaccio \
    VERDACCIO_USER_NAME=verdaccio \
    VERDACCIO_USER_UID=10001 \
    VERDACCIO_PORT=4873

WORKDIR $VERDACCIO_APPDIR

# Build
FROM base AS build

COPY --link package.json pnpm-lock.yaml ./

# renovate: datasource=npm depName=pnpm
ARG PNPM_VERSION=11.28.6
RUN npm install -g pnpm@${PNPM_VERSION}

RUN pnpm install --frozen-lockfile --prod


# Final
FROM base AS final


RUN apk --no-cache add tzdata dumb-init

RUN mkdir -p /verdaccio/storage /verdaccio/plugins /verdaccio/conf

ENV PATH=$VERDACCIO_APPDIR/node_modules/.bin:$PATH \
    HOME=$VERDACCIO_APPDIR

RUN addgroup -g $VERDACCIO_USER_UID $VERDACCIO_USER_NAME && \
    adduser -u $VERDACCIO_USER_UID -D -h $VERDACCIO_APPDIR -G $VERDACCIO_USER_NAME -s /sbin/nologin $VERDACCIO_USER_NAME && \
    chown -R $VERDACCIO_USER_UID:$VERDACCIO_USER_UID /verdaccio/storage && \
    chmod -R g=u /verdaccio/storage

COPY --link package.json .
COPY --link --from=build $VERDACCIO_APPDIR/node_modules node_modules

USER $VERDACCIO_USER_UID

ENTRYPOINT [ "/usr/bin/dumb-init", "--"]
CMD $VERDACCIO_APPDIR/node_modules/.bin/verdaccio --config /verdaccio/conf/config.yml --listen http://0.0.0.0:$VERDACCIO_PORT
