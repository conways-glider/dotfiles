#!/usr/bin/env bash

set -eou pipefail

# Install go
GO_VERSION_TAG=$(curl "https://golang.org/VERSION?m=text")
wget "https://dl.google.com/go/${GO_VERSION_TAG}.linux-amd64.tar.gz"
rm -rf /usr/local/go && tar -C /usr/local -xzf ${GO_VERSION_TAG}.linux-amd64.tar.gz

# Clean up go
rm -rf ${GO_VERSION_TAG}.linux-amd64.tar.gz
rm -rf ~/go

# Install kind
go get sigs.k8s.io/kind
