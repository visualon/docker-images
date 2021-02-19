#!/bin/bash

set -e

check_semver ${DOCKER_COMPOSE_VERSION}

if [[ ! "${MAJOR}" || ! "${MINOR}" || ! "${PATCH}" ]]; then
  echo Invalid version: ${DOCKER_COMPOSE_VERSION}
  exit 1
fi

DISTRO=Linux-x86_64
URL=https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/docker-compose-${DISTRO}
TARGET=/usr/local/bin/docker-compose
curl -sL $URL -o $TARGET
chmod +x ${TARGET}

docker-compose version
