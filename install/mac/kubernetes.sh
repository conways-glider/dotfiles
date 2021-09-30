#!/usr/bin/env bash

set -eou pipefail

# This installs the intel version - the apple silicone version instructions can be found here:
# https://kubernetes.io/docs/tasks/tools/install-kubectl-macos/
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/darwin/amd64/kubectl"

# Install kubectx
brew install kubectx
