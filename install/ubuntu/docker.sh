#!/usr/bin/env bash

set -eou pipefail

echo "Installing docker"

curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh ./get-docker.sh
