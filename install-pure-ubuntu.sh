#!/bin/bash

# install pure
npm install --global pure-prompt
# sudo npm install --global pure-prompt --allow-root --unsafe-perm=true

# link pure
sudo ln -s ~/.npm-packages/lib/node_modules/pure-prompt/pure.zsh /usr/local/share/zsh/site-functions/prompt_pure_setup
sudo ln -s ~/.npm-packages/lib/node_modules/pure-prompt/async.zsh /usr/local/share/zsh/site-functions/async
