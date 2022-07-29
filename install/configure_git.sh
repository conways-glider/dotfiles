#!/usr/bin/env bash

set -eou pipefail

echo "Configuring git"

# Configure git
# Defaults
git config --global init.defaultBranch 'main'

# Aliases
git config --global alias.s 'switch'
git config --global alias.sc 'switch -c'
git config --global alias.co 'checkout'
git config --global alias.cob 'checkout -b'
git config --global alias.p 'push'
git config --global alias.l 'pull'
git config --global alias.f 'fetch --all -p'
git config --global alias.c 'commit'
git config --global alias.cam 'commit -am'
git config --global alias.d 'diff'
git config --global alias.st 'status'
git config --global alias.a 'add'
git config --global alias.b 'branch'
git config --global alias.r 'reset'
git config --global alias.rhh 'reset --hard HEAD'

# .gitignore
git config --global core.excludesFile '~/.gitignore'
