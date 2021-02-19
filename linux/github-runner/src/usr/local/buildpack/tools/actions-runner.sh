#!/bin/bash

set -e

check_semver ${ACTIONS_RUNNER_VERSION}

if [[ ! "${MAJOR}" || ! "${MINOR}" || ! "${PATCH}" ]]; then
  echo Invalid version: ${ACTIONS_RUNNER_VERSION}
  exit 1
fi

mkdir -p /home/ubuntu/actions-runner
cd /home/ubuntu/actions-runner

DISTRO=linux-x64
URL=https://github.com/actions/runner/releases/download/v${ACTIONS_RUNNER_VERSION}/actions-runner-${DISTRO}-${ACTIONS_RUNNER_VERSION}.tar.gz

curl -sL $URL -o runner.tgz
tar xzf runner.tgz
rm runner.tgz

chown -R ubuntu ~ubuntu

./bin/installdependencies.sh
