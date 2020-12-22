#!/bin/bash

set -e

check_semver ${RANCHER_CLI_VERSION}

if [[ ! "${MAJOR}" || ! "${MINOR}" || ! "${PATCH}" ]]; then
  echo Invalid version: ${RANCHER_CLI_VERSION}
  exit 1
fi

# https://releases.rancher.com/cli/v0.6.14/rancher-linux-amd64-v0.6.14.tar.gz
DISTRO=linux-amd64
URL=https://releases.rancher.com/cli/v${RANCHER_CLI_VERSION}/rancher-${DISTRO}-v${RANCHER_CLI_VERSION}.tar.gz

curl -sL $URL -o tmp.tar.gz
tar xzf -C /usr/local/bin/ --strip-components=2 tmp.tar.gz
rm tmp.tar.gz

rancher version
