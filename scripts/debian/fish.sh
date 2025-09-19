#!/usr/bin/env bash

set -eou pipefail

echo "Installing fish shell"

if [ -f "/etc/os-release" ]; then
    . /etc/os-release
    if [[ "$ID" == "ubuntu" ]]; then
        sudo add-apt-repository ppa:fish-shell/release-4
        sudo apt update
        sudo apt -y install fish
    elif [[ "$ID" == "debian" ]]; then
        sudo apt -y install fish
    else
        echo "This system is neither Ubuntu nor Debian (ID: $ID). Not installing fish."
    fi
else
    echo "Could not determine OS type: /etc/os-release not found. Not installing fish."
fi
