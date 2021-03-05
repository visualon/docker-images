#!/bin/bash

set -e

check_semver ${TOOL_VERSION}

if [[ ! "${MAJOR}" || ! "${MINOR}" || ! "${PATCH}" ]]; then
  echo Invalid version: ${TOOL_VERSION}
  exit 1
fi

DISTRO=linux_amd64
URL=https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2Fv${TOOL_VERSION}/kustomize_v${TOOL_VERSION}_${DISTRO}.tar.gz

curl -sL ${URL} -o tmp.tgz
tar -C /usr/local/bin -xzf tmp.tgz
rm tmp.tgz

kustomize version
