FROM node:18.12.1-alpine@sha256:c1685b20cb00ab488dd7c4371973a6f62fc831b765a2b00ea2500466f2a8e74e as base

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

COPY package.json yarn.lock ./

RUN yarn install --frozen-lockfile --prod


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
