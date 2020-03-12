# dotfiles

## A collection of Configuration Files

### Running

To run the full playbook, run:

```
ansible-playbook setup.yml --ask-become-pass --extra-vars username={YOUR USERNAME}
```

### .vimrc

This vim configuration relies on Vim-Plug, which can be found here: [https://github.com/junegunn/vim-plug](https://github.com/junegunn/vim-plug). After installing this, open vim and run: `:PlugInstall`.

The primary benefit of this is NERDTree. This .vimrc adds a hotkey to open it: `Ctrl-n`.

### .zshrc

This .zshrc relies on using a font for the terminal that is compatible with the agnoster theme. To use this, change the `DEFAULT_USER` at the end of the file to match your username. Also, don't forget to customize your plugins!
