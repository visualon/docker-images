#!/bin/bash

RUNNER_TOKEN=$(curl -sX POST -H "Authorization: token ${GITHUB_ACCESS_TOKEN}" https://api.github.com/repos/${GITHUB_REPO}/actions/runners/registration-token | jq .token --raw-output)

cd /home/docker/actions-runner

./config.sh --url https://github.com/${GITHUB_REPO} --token ${RUNNER_TOKEN}

cleanup() {
    echo "Removing runner..."
   ./config.sh remove --unattended --token ${RUNNER_TOKEN}
}

trap 'cleanup; exit 130' INT
trap 'cleanup; exit 143' TERM

./run.sh & wait $!
