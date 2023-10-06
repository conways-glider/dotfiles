#!/usr/bin/env bash

set -eou pipefail

if [[ ! -x "$(cat /etc/sysctl.conf | grep \"net.ipv4.ip_unprivileged_port_start=0\")" ]]; then
  echo "Updating /etc/sysctl.conf"
#   sysctl -w net.ipv4.ip_unprivileged_port_start=0 >>/etc/sysctl.conf
fi
