FROM renovate/yarn:1.17.3@sha256:08571fc2c7f5a213f25df2b10f393ff6ea296341129466ac661d228dbc1f92ca

ARG SOURCE_COMMIT


LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" \
    name="renovate" \
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.revision="$SOURCE_COMMIT" \
    org.opencontainers.image.source="https://github.com/VisualOn/docker-images" \
    org.opencontainers.image.url="https://github.com/renovatebot/renovate"

WORKDIR /usr/src/app/

# required for install
USER root

COPY renovate /usr/bin/

RUN chown -R ubuntu:ubuntu /usr/src/app/

# Docker client and group

ENV DOCKER_VERSION=18.09.8

RUN curl -fsSLO https://download.docker.com/linux/static/stable/x86_64/docker-${DOCKER_VERSION}.tgz \
    && tar xzvf docker-${DOCKER_VERSION}.tgz --strip 1 -C /usr/local/bin docker/docker \
    && rm docker-${DOCKER_VERSION}.tgz \
    && groupadd -g 999 docker \
    && usermod -aG docker ubuntu


# and back to normal
USER ubuntu

ENV RENOVATE_BINARY_SOURCE=docker

COPY package.json .
COPY yarn.lock .
RUN yarn install --production --frozen-lockfile --link-duplicates


CMD ["renovate"]
