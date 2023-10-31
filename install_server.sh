#!/usr/bin/env bash

set -eou pipefail

./install/link_server.sh

./install/server/apt.sh

./install/ubuntu/spaceship.sh

./install/git.sh

./install/server/unprivileged_ports.sh
