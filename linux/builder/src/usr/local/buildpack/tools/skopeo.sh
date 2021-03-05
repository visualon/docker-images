#!/bin/bash

set -e

check_semver ${TOOL_VERSION}

if [[ ! "${MAJOR}" || ! "${MINOR}" || ! "${PATCH}" ]]; then
  echo Invalid version: ${TERRAFORM_VERSION}
  exit 1
fi

VERSION_ID=$(. /etc/os-release && echo $VERSION_ID)
REPO_URL="https://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/stable/xUbuntu_${VERSION_ID}"

echo "deb ${REPO_URL}/ /" | tee /etc/apt/sources.list.d/devel:kubic:libcontainers:stable.list
curl -sL ${REPO_URL}/Release.key | apt-key add -

apt_install \
  skopeo \
  ;

skopeo --version
