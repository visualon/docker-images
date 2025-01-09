#!/bin/bash

FROM=$(grep 'FROM traefik:' Dockerfile)
SEMVER_REGEX=":v?(0|[1-9][0-9]*)\.(0|[1-9][0-9]*)\.(0|[1-9][0-9]*)"


if ! [[ "$FROM" =~ $SEMVER_REGEX ]]; then
  echo Not a semver tag - skipping
  exit
fi

major=${BASH_REMATCH[1]}
minor=${BASH_REMATCH[2]}
patch=${BASH_REMATCH[3]}


tag="${major}.${minor}.${patch}"
echo "Tagging ${IMAGE}:${tag}"
docker tag "$IMAGE" "${IMAGE}:${tag}"
docker push "${IMAGE}:${tag}"
