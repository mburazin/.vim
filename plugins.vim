filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Color schemes
Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'tomasiser/vim-code-dark'
Plugin 'gosukiwi/vim-atom-dark'

" Language specific packs
Plugin 'prurigro/vim-polyglot-darkcloud'

" Gundo
Plugin 'sjl/gundo.vim'

" use the silver searcher in vim
" (Requires Silver Searcher to be installed on your sys
Plugin 'rking/ag.vim'

" Fuzzy file finder
Plugin 'ctrlpvim/ctrlp.vim'

" Nerdtree - tree explorer for vim
Plugin 'scrooloose/nerdtree'

" File type glyphs/icons for popular Vim plugins like NERDTree, vim-airline,
" Powerline, Unite, vim-startify and more
Plugin 'ryanoasis/vim-devicons'

" Syntax highlighting for NerdTree
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
