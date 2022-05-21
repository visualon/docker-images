#!/bin/bash

set -e

check_semver "${KUBECTL_VERSION}"

if [[ ! "${MAJOR}" || ! "${MINOR}" || ! "${PATCH}" ]]; then
  echo Invalid version: "${KUBECTL_VERSION}"
  exit 1
fi

DISTRO=linux/amd64
URL=https://storage.googleapis.com/kubernetes-release/release/v${KUBECTL_VERSION}/bin/${DISTRO}/kubectl

curl -sL "$URL" -o /usr/local/bin/kubectl
chmod +x /usr/local/bin/kubectl

kubectl version --client=true
