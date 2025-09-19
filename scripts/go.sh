#!/usr/bin/env bash

set -eou pipefail

echo "Adding go to PATH temporarily"
export PATH=$PATH:/usr/local/go/bin

echo "Installing go packages and binaries"

go install github.com/go-delve/delve/cmd/dlv@latest
go install github.com/google/go-licenses@latest
go install github.com/antonmedv/fx@latest
