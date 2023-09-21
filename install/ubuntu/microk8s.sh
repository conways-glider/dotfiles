#!/usr/bin/env bash

set -eou pipefail

echo "Setting up microk8s permissions"
sudo usermod -a -G microk8s $USER
sudo chown -f -R $USER ~/.kube
