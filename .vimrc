set nocompatible               " be iMproved
set clipboard=unnamed
filetype off                   " required!
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

set ruler
set number
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set autoread
set encoding=utf-8
set scrolloff=10
set mouse=a

set nobackup
set nowb
set noswapfile
" set mouse=a

" trime white space in the end of lines
function! TrimWhiteSpace()
  %s/\s\+$//e
endfunction
autocmd BufWritePre     * :call TrimWhiteSpace()
colorscheme onedark

" let g:NERDTreeWinPos = "right"
set guioptions-=T " Removes top toolbar
set guioptions-=r " Removes right hand scroll bar
set go-=L " Removes left hand scroll bar

"leader and mapping
let mapleader = ";"
let g:ctrlp_max_files=0
let g:ctrlp_map = '<c-p>'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
" let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
"       \ --ignore .git
"       \ --ignore .DS_Store
"       \ --ignore "**/*.pyc"
"       \ --ignore "vender/*"
"       \ --ignore "public/*"
"       \ --ignore "db/*"
"       \ --ignore "bin/*"
"       \ -g ""'

"noremap <leader>w <Esc>:w<CR>
"noremap <leader>q <Esc>:q<CR>
"inoremap <leader>n <Esc>

" Highlight current line
" au WinLeave * set nocursorline nocursorcolumn
" au WinEnter * set cursorline cursorcolumn
" set cursorline cursorcolumn

" let Vundle manage Vundle
" required!
Plugin 'gmarik/vundle'

" My Plugins here:
"
Plugin 'slim-template/vim-slim'

" original repos on github
Plugin 'tpope/vim-fugitive'
Plugin 'easymotion/vim-easymotion'

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

"SnipMate
Plugin 'msanders/snipmate.vim'

"autocomplete
"Plugin 'Valloric/YouCompleteMe'

"tcomment
Plugin 'tomtom/tcomment_vim'
"codeschool
" Plugin "29decibel/codeschool-vim-theme"
"the-silver-search
Plugin 'rking/ag.vim'

Plugin 'kana/vim-fakeclip'
" Plugin 'airblade/vim-gitgutter'

Plugin 'majutsushi/tagbar'
" config for tagbar

Plugin 'tpope/vim-surround'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" auto complete close pairs
Plugin 'auto-pairs-gentle'

Plugin 'endwise.vim'

Plugin 'janko-m/vim-test'


Plugin 'Shougo/unite.vim'
Plugin 'devjoe/vim-codequery'

Plugin 'dyng/ctrlsf.vim'
vmap <C-f> <Plug>CtrlSFVwordExec

vmap <C-y> "*y

" these "Ctrl mappings" work well when Caps Lock is mapped to Ctrl
nmap <silent> t<C-n> :TestNearest<CR>
" t Ctrl+n
nmap <silent> t<C-f> :TestFile<CR>
" t Ctrl+f
" nmap <silent> t<C-s> :TestSuite<CR>
" t Ctrl+s
" nmap <silent> t<C-l> :TestLast<CR>
" t Ctrl+l
" nmap <silent> t<C-g> :TestVisit<CR>
" t Ctrl+g

let g:AutoPairsUseInsertedCount = 1

let g:airline#extensions#tabline#enabled = 1

let g:tagbar_width=35
let g:tagbar_autofocus=1
nmap <F8> :TagbarToggle<CR>

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
