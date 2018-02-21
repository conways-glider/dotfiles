# dotfiles

## A collection of Configuration Files

### .vimrc

This vim configuration relies on Vim-Plug, which can be found here: [https://github.com/junegunn/vim-plug](https://github.com/junegunn/vim-plug). After installing this, open vim and run: `:PlugInstall`.

The primary benefit of this is NERDTree. This .vimrc adds a hotkey to open it: `Ctrl-n`.

### .zshrc

This .zshrc relies on using a font for the terminal that is compatible with the agnoster theme. To use this, change the `DEFAULT_USER` at the end of the file to match your username. Also, don't forget to customize your plugins!

### Fonts

I use FiraCode for my font.

It can be found at: [https://github.com/tonsky/FiraCode](https://github.com/tonsky/FiraCode)

### Todo

- move shared parts of scripts to general scripts (e.g. shared parts of `install-mac.sh` and `install-debian.sh` to `scripts/install-general.sh`)
- add checking for and installing Oh My Zsh
- finalize debian/ubuntu script
- create link and font scripts for debian/ubuntu
- add python virtual environment (either virtualenv or pipenv)
- add nvm
