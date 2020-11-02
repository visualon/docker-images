#!/bin/bash -ex

echo Node $(node --version)
echo Yarn $(yarn --version)
echo Pnpm $(pnpm --version)

yarn --frozen-lockfile