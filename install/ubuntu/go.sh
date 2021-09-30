#!/usr/bin/env bash

set -eou pipefail

echo "Installing golang"

# Install go
GO_VERSION_TAG=$(curl "https://golang.org/VERSION?m=text")
wget "https://dl.google.com/go/${GO_VERSION_TAG}.linux-amd64.tar.gz"
sudo rm -rf /usr/local/go
sudo tar -C /usr/local -xzf ${GO_VERSION_TAG}.linux-amd64.tar.gz

# Clean up
sudo rm -rf ${GO_VERSION_TAG}.linux-amd64.tar.gz
sudo rm -rf ~/go

# Install packages
go install sigs.k8s.io/kind@latest
curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $(go env GOPATH)/bin
