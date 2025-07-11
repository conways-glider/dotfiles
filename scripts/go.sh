#!/usr/bin/env bash

set -eou pipefail

echo "Installing go packages and binaries"

go install github.com/go-delve/delve/cmd/dlv@latest
go install github.com/google/go-licenses@latest
go install github.com/antonmedv/fx@latest
go install sigs.k8s.io/kind@v0.20.0
