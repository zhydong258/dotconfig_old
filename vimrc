scriptencoding utf-8
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" set the path Vundle installs plugins to and init call
call vundle#rc("~/.vim/bundle/")

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" better file browser
Plugin 'scrooloose/nerdtree'

" class/module browser
Plugin 'majutsushi/tagbar'

" airline, awesome powerline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" chinese vimcdoc
Plugin 'yianwillis/vimcdoc'

" Plugins from vim-scripts repos:
" Search results counter
Plugin 'IndexedSearch'
" Gvim colorscheme
Plugin 'Wombat'
" Yank history navigation
Plugin 'YankRing.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on


" ========================================================
" Vim settings and mappings
" Settings
filetype plugin indent on

" colors and fonts for gvim
if has('gui_running')
    colorscheme wombat
    set guioptions-=T
 if has('gui_win32')
   set guifont=Inconsolata-dz\ for\ Powerline:h12
   set guifontwide=YouYuan:h12:cGB2312
 else
   set guifont=Inconsolata-dz\ for\ Powerline\ Medium\ 12
 endif
endif

" mapleader
let mapleader = ","

"syntax highlight on
syntax on

" hidden startup message
set shortmess=atI

" always show status bar
set laststatus=2

" highlight search results
set hlsearch
set ignorecase
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

" auto indent for a new line
set autoindent

" <BS> to delete in insert mode
set backspace=indent,eol,start

" set tab for indent
set expandtab
set shiftwidth=4
set tabstop=4

" set auto read file
set autoread

" better backup, swap and undos storage
set directory=~/.vim/dirs/tmp
set backup
set backupdir=~/.vim/dirs/backups
set undofile
set undodir=~/.vim/dirs/undos
set viminfo+=n~/.vim/dirs/viminfo
let g:yankring_history_dir = '~/.vim/dirs/'

" mapping xx to ESC
inoremap fd <ESC>
inoremap jj <ESC>
inoremap jk <ESC>

" quick edit and source vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" ========================================================
" Plugin settings and mappings

" vim-airline
" vim-airline-themes
let g:airline_theme ='luna'
" use patched font for powerline symbol
let g:airline_powerline_fonts = 1
" powerline symbols
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''


" Automatically displays all buffers when there's only one tab open.
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#buffer_nr_show = 1

" Display index of the buffer
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab

" NERDTree config
map <F3> :NERDTreeToggle<CR>
