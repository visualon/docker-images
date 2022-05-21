#!/bin/bash

set -e

RUNNER_TOKEN=$(curl -sX POST -H "Authorization: token ${GITHUB_ACCESS_TOKEN}" https://api.github.com/repos/"${GITHUB_REPO}"/actions/runners/registration-token | jq .token --raw-output)

if [[ -z $RUNNER_REPLACE_EXISTING ]]; then
    export RUNNER_REPLACE_EXISTING="true"
fi

CONFIG_OPTS=()

if [ "$(echo $RUNNER_REPLACE_EXISTING | tr '[:upper:]' '[:lower:]')" == "true" ]; then
	CONFIG_OPTS=("--replace")
fi

if [[ -n $RUNNER_LABELS ]]; then
    CONFIG_OPTS=("${CONFIG_OPTS[@]}" --labels "${RUNNER_LABELS}")
fi

if [[ -n $RUNNER_NAME ]]; then
    CONFIG_OPTS=("${CONFIG_OPTS[@]}"--name "${RUNNER_NAME}")
fi

./config.sh \
  --url https://github.com/"${GITHUB_REPO}" \
  --token "${RUNNER_TOKEN}" "${CONFIG_OPTS[@]}" \
  --work _work \
  ;

cleanup() {
    echo "Removing runner..."
   ./config.sh remove --unattended --token "${RUNNER_TOKEN}"
}

trap 'cleanup; exit 130' INT
trap 'cleanup; exit 143' TERM

./bin/runsvc.sh
