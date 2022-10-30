#!/usr/bin/env bash

set -eou pipefail

echo "Installing go packages and binaries"

go install github.com/google/go-licenses@latest
