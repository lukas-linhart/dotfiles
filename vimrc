set nu
set hlsearch
set scrolloff=15
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
set shiftround
set nowrap
set mouse=a

" syntax highlighting
filetype plugin on
syntax on

" KEYBINDINGS

let mapleader = " "

" remap exiting insert and visual mode
inoremap jk <esc>
vnoremap jk <esc>

" disable arrow keys
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" clear current hl search
nnoremap <leader>ch :noh<cr>

" navigation between tabs
nnoremap <C-h> :tabp<cr>
nnoremap <C-l> :tabn<cr>

" open new tab
nnoremap <C-n> :tabnew<cr>

noh

