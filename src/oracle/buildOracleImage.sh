#!/usr/bin/env bash

set -eu

# shellcheck disable=SC2046
WORKDIR=$(pwd)
cd "$(dirname "$0")"

echo "--------------------------------------------------------------------------------"
echo "oracle docker image generator download"
echo "--------------------------------------------------------------------------------"

git clone --depth=1 https://github.com/oracle/docker-images.git temp

echo "--------------------------------------------------------------------------------"
echo "generate oracle docker image"
echo "--------------------------------------------------------------------------------"

cd temp/OracleDatabase/SingleInstance/dockerfiles/
./buildContainerImage.sh -v 21.3.0 -x

echo "--------------------------------------------------------------------------------"
echo "finish"
echo "--------------------------------------------------------------------------------"
