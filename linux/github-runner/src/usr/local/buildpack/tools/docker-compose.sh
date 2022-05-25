#!/bin/bash

set -e

require_root
check_semver "${DOCKER_COMPOSE_VERSION}"

if [[ ! "${MAJOR}" || ! "${MINOR}" || ! "${PATCH}" ]]; then
  echo Invalid version: "${DOCKER_COMPOSE_VERSION}"
  exit 1
fi

DISTRO=Linux-x86_64
URL=https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/docker-compose-${DISTRO}

if [[ "${MAJOR}" -gt 1 ]]; then
  check_command docker
  TARGET=/usr/local/lib/docker/cli-plugins/docker-compose

  mkdir -p "/usr/local/lib/docker/cli-plugins"

  curl -sL "$URL" -o "${TARGET}"
  chmod +x "${TARGET}"

  docker compose version
else
  TARGET=/usr/local/bin/docker-compose
  curl -sL "$URL" -o $TARGET
  chmod +x ${TARGET}
  docker-compose version
fi
