" Vundle config
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'morhetz/gruvbox'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'itchyny/lightline.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-dispatch'
Plugin 'thoughtbot/vim-rspec'
Plugin 'tpope/vim-rails'
call vundle#end()
filetype plugin indent on

" lightline config
set laststatus=2
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

" vim-rspec config
map <Leader>T :call RunCurrentSpecFile()<CR>
map <Leader>t :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
let g:rspec_command = "Dispatch bundle exec rspec {spec}"

" set spacebar to mapleader
let mapleader=" "

" map jj to escape in insert mode
imap jj <Esc>

" edit another file in the same directory as the current file
" uses expression to extract path from current file's path
map <Leader>e :e <C-R>=expand("%:p:h") . '/'<CR><CR>
map <Leader>s :split <C-R>=expand("%:p:h") . '/'<CR><CR>
map <Leader>v :vnew <C-R>=expand("%:p:h") . '/'<CR><CR>

" disallow arrow keys
nnoremap <Left> <nop>
nnoremap <Right> <nop>
nnoremap <Up> <nop>
nnoremap <Down> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>
inoremap <Up> <nop>
inoremap <Down> <nop>

" keep 50 items in the history
set history=50

" display the cursor position
set ruler

" display a menu when tab completing a cmd
set wildmenu

" keep 5 lines above and below the cursor
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
colorscheme gruvbox

