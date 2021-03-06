set nu
set rnu
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
set clipboard=unnamedplus
set laststatus=2 " always show status line
set directory=/tmp//
set updatetime=4000
set autoread

" syntax highlighting
filetype plugin on
syntax on

" elm indenting
autocmd Filetype elm setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype javascript setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype html setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2

" KEYBINDINGS

let mapleader = " "

" remap exiting insert and visual mode
inoremap jk <esc>
vnoremap jk <esc>

" disable arrow keys
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

" disable backspace and delete
inoremap <BS> <nop>
inoremap <Del> <nop>

" more convenient delete button in insert mode
inoremap <C-d> <Del>

" editing and sourcing vimrc file
nnoremap <leader>ev :tabnew $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" clear current hl search
nnoremap <leader>ch :noh<cr>

" regex handling - experimental
nnoremap / /\v
vnoremap / /\v

" toggle nerdtree
nnoremap <silent> <leader>nt :NERDTreeToggle<cr>

" toggle taglist
nnoremap <silent> <leader>tl :TlistToggle<cr>

" close current buffer - stolen from http://stackoverflow.com/a/8585343
nnoremap <leader>q :bp<bar>sp<bar>bn<bar>bd<cr>

" close current window
nnoremap <leader>x :q<cr>

" cycle through buffers
nnoremap <tab> :bnext<cr>
nnoremap <S-tab> :bprevious<cr>

" save current buffer
nnoremap <leader>w :w<cr>

" jump to next lint issue
nnoremap <leader>lint :ALENextWrap<cr>

" toggle changed lines highlighting
nnoremap <leader>ghi :GitGutterLineHighlightsToggle<cr>

" reload buffers
nnoremap <F5> :checktime<CR>

" Faster viewport scrolling
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

noh


" open vim-plug window in new tab instead of new pane
let g:plug_window = '-tabnew'

" disable jedi call signature window
"let g:jedi#show_call_signatures = 0

" enable jsx syntax highlighting even in js files
let g:jsx_ext_required = 0

" attempt to close tags in these files
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.js,*.jsx"

" show all buffers when there is only one tab open
let g:airline#extensions#tabline#enabled = 1

" show dir in tabline when file is index
let g:airline#extensions#tabline#formatter = 'jsformatter'

" use powerline fonts
let g:airline_powerline_fonts = 1

" taglist in right window
let Tlist_Use_Right_Window = 1

" remove extra info and blank lines from taglist
let Tlist_Compact_Format = 1

" disable taglist fold column
let Tlist_Enable_Fold_Column = 0

" always display side lint column
let g:ale_sign_column_always = 1

" hide files in NERDTree
let NERDTreeIgnore = ['\.pyc$', '__pycache__']

" enable deoplete on startup
let g:deoplete#enable_at_startup = 1

" snippet trigger
inoremap <C-M> <nop>
let g:UltiSnipsExpandTrigger="<c-m>"
inoremap <C-K> <nop>
let g:UltiSnipsJumpForwardTrigger="<c-k>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" CtrlP - ignore some folders and files
let g:ctrlp_custom_ignore = { 'dir' : '\v(node_modules|elm-stuff)' }
let g:ctrlp_working_path_mode = 'a'

" whitespace
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1

" temporary fix for fugitive (NERDTree throws error on first time toggle)
" can be removed after https://github.com/tpope/vim-fugitive/pull/966 is
" merged
au User NERDTreeInit let b:NERDTreeRoot = b:NERDTree.root

" plugins section start --------------------------------------------------------
call plug#begin('~/.local/share/nvim/plugged')

" usage: :PlugInstall / :PlugClean

Plug 'scrooloose/nerdtree'
Plug 'lambdatoast/elm.vim'
Plug 'derekwyatt/vim-scala'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'mxw/vim-jsx'
Plug 'ianks/vim-tsx'
Plug 'alvan/vim-closetag'
Plug 'mkitt/tabline.vim' " required for airline tabline formatters
Plug 'vim-airline/vim-airline'
Plug 'edkolev/tmuxline.vim'
Plug 'vim-scripts/taglist.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'sgur/vim-editorconfig'
Plug 'airblade/vim-gitgutter'
Plug 'w0rp/ale'
Plug 'mfukar/robotframework-vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'SirVer/ultisnips'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ntpeters/vim-better-whitespace'

call plug#end()
" plugins section end ----------------------------------------------------------

