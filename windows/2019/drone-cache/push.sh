#!/bin/bash

latest=ghcr.io/$OWNER/$FILE

docker tag $IMAGE $latest
docker push $latest

# FROM=$(cat Dockerfile | grep KUBECTL_VERSION)
# SEMVER_REGEX="=(0|[1-9][0-9]*)\.(0|[1-9][0-9]*)\.(0|[1-9][0-9]*)(-[a-z0-9]+)?"


# if ! [[ "$FROM" =~ $SEMVER_REGEX ]]; then
#   echo Not a semver tag - skipping
#   exit
# fi

# major=${BASH_REMATCH[1]}
# minor=${BASH_REMATCH[2]}
# patch=${BASH_REMATCH[3]}


# # Tag and push image for each additional tag
# for tag in {"${major}","${major}.${minor}","${major}.${minor}.${patch}"}; do
#   echo "Tagging ${IMAGE}:${tag}"
#   docker tag $IMAGE ${IMAGE}:${tag}
#   docker push ${IMAGE}:${tag}
# done
