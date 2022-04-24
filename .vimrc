""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin config

" Use Vundle to manage plugins
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
filetype plugin indent on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins to install

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'nanotech/jellybeans.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'itchyny/lightline.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-dispatch'
Plugin 'vim-test/vim-test'
Plugin 'tpope/vim-rails'
Plugin 'preservim/nerdtree'
Plugin 'ntpeters/vim-better-whitespace'
call vundle#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-better-whitespace

let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" lightline statusbar

set laststatus=2
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'relativepath', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree

let NERDTreeWinSize = 80

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CtrlP

let g:ctrlp_user_command = 'ag %s --hidden --no-color -g ""'
let g:ctrlp_use_caching = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" <Leader> key bindings

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" use spacebar as leader key
let mapleader=" "

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-test
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" toggle NERDTree menu
map <Leader>f :NERDTreeToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ctrl key bindings

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" grepping

nmap <C-g> :vnew<CR>:grep<space>
nmap <C-n> :cn<CR>
nmap <C-p> :cp<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CtrlP becomes CtrlA
let g:ctrlp_map = '<C-a>'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" save file
map <C-s> <esc>:w<CR>
imap <C-s> <esc>:w<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" inverted carriage return
imap <C-o> <esc>O

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" navigate directory of current file
map <C-e> :vnew <C-R>=escape(expand("%:p:h"), ' ') . '/'<CR><CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Other key bindings

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" <Esc> from the home row while in insert mode
imap jj <Esc>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" disallow arrow keys
nnoremap <Left> <nop>
nnoremap <Right> <nop>
nnoremap <Up> <nop>
nnoremap <Down> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>
inoremap <Up> <nop>
inoremap <Down> <nop>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Settings

" use ag instead of grep
set grepprg=ag

" keep 50 items in the history
set history=50

" display the cursor position
set ruler

" display a menu when tab completing a cmd
set wildmenu

" always keep 5 lines above and below the cursor when scrolling
set scrolloff=5

" highlight matches from last text search
set hlsearch

" highlight search results as search string is typed
set incsearch

" display line numbers
set number

" don't line wrap mid-word
set lbr

" infer indentation from current line
set ai

" use spaces not tabs
set tabstop=2 shiftwidth=2 expandtab

" don't create backup files
set nobackup
set nowritebackup

" don't create swapfiles
set noswapfile

" make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1

" use gruvbox colors
set bg=dark
colorscheme jellybeans
