set nu
set hlsearch
set incsearch " show search matches as you type
set ignorecase
set smartcase
set scrolloff=5
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
set shiftround
set nowrap
set mouse=a
set hidden
set backspace=indent,eol,start " backspace through everything
set ruler

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

" more convenient delete button in insert mode
inoremap <C-d> <Del>

" editing and sourcing vimrc file
nnoremap <leader>ev :tabnew $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" clear current hl search
nnoremap <leader>ch :noh<cr>

" navigation between tabs
nnoremap <C-h> :tabp<cr>
nnoremap <C-l> :tabn<cr>

" open new tab
nnoremap <C-n> :tabnew<cr>

" toggle nerdtree
nnoremap <leader>nt :NERDTreeToggle<cr>

" close current buffer - stolen from http://stackoverflow.com/a/8585343
nnoremap <leader>q :bp<bar>sp<bar>bn<bar>bd<cr>

" cycle through buffers
nnoremap <tab> :bnext<cr>
nnoremap <S-tab> :bprevious<cr>

noh


" open vim-plug window in new tab instead of new pane
let g:plug_window = '-tabnew'

" plugins section start --------------------------------------------------------
call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'lambdatoast/elm.vim'

call plug#end()
" plugins section end ----------------------------------------------------------

