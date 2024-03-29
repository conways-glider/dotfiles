#!/usr/bin/env bash

set -eou pipefail

# Install go
echo "Installing go"

GO_VERSION_TAG=$(curl "https://go.dev/VERSION?m=text" | head -1)
BUNDLE_FILENAME="${GO_VERSION_TAG}.linux-amd64.tar.gz"
wget "https://dl.google.com/go/${BUNDLE_FILENAME}"
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf ${BUNDLE_FILENAME}

# Clean up go
rm -rf ${BUNDLE_FILENAME}
sudo rm -rf ~/go
