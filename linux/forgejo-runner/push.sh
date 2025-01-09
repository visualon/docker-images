#!/bin/bash

FROM=$(grep 'FROM code.forgejo.org/forgejo/runner:' Dockerfile)
SEMVER_REGEX=":(0|[1-9][0-9]*)\.(0|[1-9][0-9]*)\.(0|[1-9][0-9]*)"


if ! [[ "$FROM" =~ $SEMVER_REGEX ]]; then
  echo Not a semver tag - skipping
  exit
fi

major=${BASH_REMATCH[1]}
minor=${BASH_REMATCH[2]}
patch=${BASH_REMATCH[3]}


tag="${major}.${minor}.${patch}"
echo "Tagging ${IMAGE}:${tag}"
crane tag "$IMAGE" "${tag}"
