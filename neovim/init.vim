" Remap Movement
nnoremap <silent> <C-Right> <c-w>l
nnoremap <silent> <C-Left> <c-w>h
nnoremap <silent> <C-Up> <c-w>k
nnoremap <silent> <C-Down> <c-w>j
nnoremap <silent> <A-Right> gt
nnoremap <silent> <A-Left> gT

" move up and down by row
nnoremap j gj
nnoremap k gk

" search
set hlsearch
set ignorecase
set incsearch
set smartcase
nmap <silent> <Space>c :set hlsearch!<CR>

" Stop vim from creating automatic backups
set noswapfile
set nobackup
set nowb

" Clipboard Stuff
" always use system clipboard
set clipboard+=unnamedplus

" Mouse Stuff
" use mouse integration
set mouse=a

" Indentation Stuff
filetype plugin indent on
" show existing tab with 2 spaces width
set tabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" On pressing tab, insert 2 spaces
set expandtab

" Leader Setting => Space
let mapleader=" "

" Remove trailing whitespace
autocmd BufWritePre * %s/\s\+$//e

" Set Color Column
" set colorcolumn=80
