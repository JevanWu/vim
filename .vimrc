set nocompatible               " be iMproved
filetype off                   " required!
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

set number
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set autoread
set encoding=utf-8
set scrolloff=10

set nobackup
set nowb
set noswapfile
" set mouse=a

let g:NERDTreeWinPos = "right"
set guioptions-=T " Removes top toolbar
set guioptions-=r " Removes right hand scroll bar
set go-=L " Removes left hand scroll bar

" let Vundle manage Vundle
" required! 
Plugin 'gmarik/vundle'

" My Plugins here:
"
Plugin 'slim-template/vim-slim'

" original repos on github
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'

Plugin 'tpope/vim-rails.git'

"vim-coffee-script
Plugin 'kchmck/vim-coffee-script'

" vim-scripts repos
Plugin 'L9'
"Plugin 'FuzzyFinder'

Plugin 'scrooloose/nerdtree'
map <C-t> :NERDTreeToggle<CR>
"CtrlP
Plugin 'kien/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ --ignore "vender/*"
      \ --ignore "public/*"
      \ --ignore "db/*"
      \ --ignore "bin/*"
      \ -g ""'
"SnipMate
Plugin 'msanders/snipmate.vim'
"autocomplete
" Plugin "Shougo/neocomplchache.vim"
"tcomment
Plugin 'tomtom/tcomment_vim'
"codeschool 
" Plugin "29decibel/codeschool-vim-theme"
"the-silver-search
Plugin 'rking/ag.vim'
"colorscheme codeschool
Plugin 'kana/vim-fakeclip'
Plugin 'airblade/vim-gitgutter'

" Plugin 'majutsushi/tagbar'
" "config for tagbar
" let g:tagbar_width=35
" let g:tagbar_autofocus=1
" nmap <F8> :TagbarToggle<CR>

call vundle#end()

syntax enable
filetype plugin indent on     " required!

"
" Brief help
" :PluginList          - list configured bundles
" :PluginInstall(!)    - install(update) bundles
" :PluginSearch(!) foo - search(or refresh cache first) for foo
" :PluginClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ

