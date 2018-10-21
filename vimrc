set nocompatible              " be iMproved, required

" External plugins
so ~/.vim/plugins.vim

" Put your non-Plugin stuff after this line

" Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
" If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
" (see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

" Leader 
let mapleader=","       " leader is comma

" Colors and visuals
syntax enable           " enable syntax processing
set t_CO=256
colorscheme onedark
"Get rid of ugly split borders.
hi vertsplit guifg=bg guibg=bg

" Spaces and tabs
set expandtab        " tabs are spaces
set shiftwidth=4
set softtabstop=4    " number of spaces in tab when editing
set preserveindent
set autoindent
au FileType html setlocal expandtab shiftwidth=2 softtabstop=2 autoindent

" UI config
set encoding=UTF-8
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]

"-------------Split Management--------------"
set splitbelow          " Make splits default to below...
set splitright          " and to the right.

" Simpler mappings to switch between splits
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

"map <silent> <A-h> <C-W><
"map <silent> <A-l> <C-W>>

"-------------Search--------------"
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>


" Edit and source .vimrc
nnoremap <leader>ev :tabedit $MYVIMRC<cr>
nnoremap <leader>ep :tabedit $HOME/.vim/plugins.vim<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

"-------------Plugins--------------"
" CtrlP
let g:ctrlp_match_window = 'bottom,order:ttb' " order matching files top-to-bottom
let g:ctrlp_switch_buffer = 0 " always open files in new buffers
let g:ctrlp_working_path_mode = 0 " change the cwd during session and let CtrlP respect that change
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
let g:ctrlp_custom_ignore = 'node_modules\DS_Store\|git'


" toggle Gundo
nnoremap <leader>u :GundoToggle<CR>

" open ag.vim
nnoremap <leader>a :Ag 

" NERDTree
let NERDTreeHijackNetrw = 0
"Make NERDTree easier to toggle.
nmap <C-n> :NERDTreeToggle<cr>
if exists("g:loaded_webdevicons")
  call webdevicons#refresh()
endif

"-------------Auto-Commands--------------"

" Automatically source the vimrc file on save
augroup autosourcing
    autocmd!
    autocmd BufWritePost vimrc source %
augroup END

