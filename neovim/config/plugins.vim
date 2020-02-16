" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

" NERDTree - Navigation
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" NERDTree Git Plugin
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }

" NERDCommenter
Plug 'scrooloose/nerdcommenter'

" Auto-Pairs - Auto Parens
Plug 'jiangmiao/auto-pairs'

" deoplete.nvim - Autocomplete
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'ervandew/supertab'

" Vim Fugitive - Git Controls
Plug 'tpope/vim-fugitive'

" Vim Surround - Surround text
Plug 'tpope/vim-surround'

" Airline - Status Line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" fzf - Fuzzy Finder
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'junegunn/fzf.vim'

" vim-move - Move Line(s) of code
Plug 'matze/vim-move'

" numbers.vim - Smart Line Numbers
Plug 'myusuf3/numbers.vim'

" vim-sensible - Vim Standards
Plug 'tpope/vim-sensible'

" vim-vinegar - Navigation
Plug 'tpope/vim-vinegar'

" Base16
Plug 'chriskempson/base16-vim'

" rust-lang
Plug 'rust-lang/rust.vim'

" Linting
Plug 'w0rp/ale'

" EasyMotion
Plug 'easymotion/vim-easymotion'

" Prettier
Plug 'prettier/vim-prettier'

" Initialize plugin system
call plug#end()
