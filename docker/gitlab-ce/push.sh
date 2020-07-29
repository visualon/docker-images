#!/bin/bash

FROM=$(cat Dockerfile | grep 'FROM gitlab/gitlab-ce:')
SEMVER_REGEX=":(0|[1-9][0-9]*)\.(0|[1-9][0-9]*)\.(0|[1-9][0-9]*)@"

echo "Tagging ${IMAGE}"
docker push ${IMAGE}

if ! [[ "$FROM" =~ $SEMVER_REGEX ]]; then
  echo Not a semver tag - skipping
  exit
fi

major=${BASH_REMATCH[1]}
minor=${BASH_REMATCH[2]}
patch=${BASH_REMATCH[3]}


# Tag and push image for each additional tag
for tag in {"${major}","${major}.${minor}","${major}.${minor}.${patch}"}; do
  echo "Tagging ${IMAGE}:${tag}"
  docker tag $IMAGE ${IMAGE}:${tag}
  docker push ${IMAGE}:${tag}
done
