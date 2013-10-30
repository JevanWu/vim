 set nocompatible               " be iMproved
 filetype off                   " required!
 set number
 set rtp+=~/.vim/bundle/vundle/
 set smartindent
 set tabstop=2
 set shiftwidth=2
 set expandtab
 set autoread
 set scrolloff=10
 set mouse=a
 call vundle#rc()

  color codeschool
  let g:NERDTreeWinPos = "right"
  set guioptions-=T " Removes top toolbar
  set guioptions-=r " Removes right hand scroll bar
  set go-=L " Removes left hand scroll bar

 " let Vundle manage Vundle
 " required! 
 Bundle 'gmarik/vundle'

 " My Bundles here:
 "
 " original repos on github
 Bundle 'tpope/vim-fugitive'
 Bundle 'Lokaltog/vim-easymotion'
 Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
 Bundle 'tpope/vim-rails.git'
 " vim-scripts repos
 Bundle 'L9'
 Bundle 'FuzzyFinder'
 " non github repos
 Bundle 'git://git.wincent.com/command-t.git'
 " git repos on your local machine (ie. when working on your own plugin)
 Bundle 'file:///Users/gmarik/path/to/plugin'
 " NerdTree
 Bundle 'scrooloose/nerdtree'
 map <C-t> :NERDTreeToggle<CR>
 "CtrlP
 Bundle 'kien/ctrlp.vim'
 let g:ctrlp_map = '<c-p>'
 "vim-coffee-script
 Bundle 'kchmck/vim-coffee-script'
 "SnipMate
 Bundle "msanders/snipmate.vim"
"autocomplete
 Bundle "Shougo/neocomplchache.vim"
"tcomment
 Bundle "tomtom/tcomment_vim" 
 "defined by myslef"
 
 syntax enable
 filetype plugin indent on     " required!
 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..

