#!/usr/bin/env bash

set -eou pipefail

# Install go
echo "Installing go"

GO_VERSION_TAG=$(curl "https://go.dev/VERSION?m=text" | head -1)
ARCH=$(dpkg-architecture --list)
BUNDLE_FILENAME="${GO_VERSION_TAG}.linux-${ARCH}.tar.gz"
wget "https://dl.google.com/go/${BUNDLE_FILENAME}"
clean_up () {
    ARG=$?

    echo "Cleaning up"
    echo "Removing go bundle"
    rm -rf ${BUNDLE_FILENAME}
    sudo rm -rf ~/go

    exit $ARG
}
trap clean_up EXIT

sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf ${BUNDLE_FILENAME}
