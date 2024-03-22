#!/bin/bash

set -e

require_root
check_semver "${TOOL_VERSION}"

if [[ ! "${MAJOR}" || ! "${MINOR}" || ! "${PATCH}" ]]; then
  echo Invalid version: "${TOOL_VERSION}"
  exit 1
fi

mkdir -p /actions-runner
cd /actions-runner

DISTRO=linux-x64
URL=https://github.com/actions/runner/releases/download/v${TOOL_VERSION}/actions-runner-${DISTRO}-${TOOL_VERSION}.tar.gz

curl -sL "$URL" -o runner.tgz
tar xzf runner.tgz
rm runner.tgz

chown -R "${USER_NAME}" .

./bin/installdependencies.sh
