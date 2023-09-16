#!/usr/bin/env bash

set -eou pipefail

echo "Installing mullvad"
wget --content-disposition https://mullvad.net/download/app/deb/latest

echo "Setting up clean up"
clean_up () {
    ARG=$?

    echo "Cleaning up"
    echo "Removing mullvad"
    rm -rf ./Mullvad*

    exit $ARG
}
trap clean_up EXIT

sudo apt install -y ./Mullvad*
