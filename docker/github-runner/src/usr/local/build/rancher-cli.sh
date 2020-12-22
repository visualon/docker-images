#!/bin/bash

set -e

check_semver ${RANCHER_CLI_VERSION}

if [[ ! "${MAJOR}" || ! "${MINOR}" || ! "${PATCH}" ]]; then
  echo Invalid version: ${RANCHER_CLI_VERSION}
  exit 1
fi

DISTRO=linux-amd64
URL=https://releases.rancher.com/cli/v${RANCHER_CLI_VERSION}/rancher-${DISTRO}-v${RANCHER_CLI_VERSION}.tar.gz

curl -sL $URL -o rancher.tgz
tar xvzf -C /usr/local/bin/ --strip-components 2 rancher.tgz
rm rancher.tgz

rancher version
