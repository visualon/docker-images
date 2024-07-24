FROM node:20.16.0-alpine@sha256:1a8bc4dc4720f0eb2f68d1883fd09f939103bd6df3848e0ffdc919d7fbf4dee1 as base

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
FROM base as build

COPY package.json pnpm-lock.yaml ./

RUN corepack pnpm install --frozen-lockfile --prod


# Final
FROM base as final


RUN apk --no-cache add tzdata dumb-init

RUN mkdir -p /verdaccio/storage /verdaccio/plugins /verdaccio/conf

ENV PATH=$VERDACCIO_APPDIR/node_modules/.bin:$PATH \
    HOME=$VERDACCIO_APPDIR

RUN addgroup -g $VERDACCIO_USER_UID $VERDACCIO_USER_NAME && \
    adduser -u $VERDACCIO_USER_UID -D -h $VERDACCIO_APPDIR -G $VERDACCIO_USER_NAME -s /sbin/nologin $VERDACCIO_USER_NAME && \
    chown -R $VERDACCIO_USER_UID:$VERDACCIO_USER_UID /verdaccio/storage && \
    chmod -R g=u /verdaccio/storage

COPY package.json .
COPY --from=build $VERDACCIO_APPDIR/node_modules node_modules

USER $VERDACCIO_USER_UID

ENTRYPOINT [ "/usr/bin/dumb-init", "--"]
CMD $VERDACCIO_APPDIR/node_modules/.bin/verdaccio --config /verdaccio/conf/config.yml --listen http://0.0.0.0:$VERDACCIO_PORT
