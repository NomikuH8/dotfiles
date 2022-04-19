" Vim configs

" theme
set bg=dark " lighter than light
" set bg=light

" searching
set hlsearch
set incsearch
set showmatch
set ignorecase

" set vim clipboard to system clipboard
set clipboard=unnamedplus

" adjust tabsize
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

" indentation
set autoindent
set smartindent

" line numbers
set relativenumber

" add an underline for better localization
" set cursorline

" basic
set nocompatible
filetype plugin indent on
set encoding=UTF-8
syntax on
filetype plugin on

" enable mouse
" set mouse=a

" set cursorline
set noswapfile
set guicursor=i:block

" folding
set foldmethod=syntax
" set foldlevelstart=1
let javaScript_fold=1
let perl_fold=1
let php_folding=1
let r_syntax_folding=1
let ruby_fold=1
let sh_fold_enabled=1
let vimsyn_folding='af'
let xml_syntax_folding=1

" enable autocomplete ctrl+n to activate
set wildmode=longest,list,full

" disable automatic comment
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" autocmd FileType python setlocal tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab

" split on right aways
set splitbelow splitright

" REMAPS
" shortcut split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" keybinds
nmap <F5> :tabp<CR>
nmap <F6> :tabnew<CR>
nmap <F7> :tabc<CR>
nmap <F8> :tabn<CR>

" paste from system clipboard w/ ctrl+i instead of shift+insert
map <S-insert> <C-i>

" automatical deletion of trailing whitespaces on save
autocmd BufWritePre * %s/\s\+$//e
