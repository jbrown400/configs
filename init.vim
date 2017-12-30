
" be iMproved, required
set nocompatible
" required
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


" Example plugin lines "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'bling/vim-airline'
Bundle 'jistr/vim-nerdtree-tabs'

" My Plugins
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter' " Adds diff symbols to the left hand 'gutter'
Plugin 'tpope/vim-fugitive'     " Branch support for airline
Plugin 'pangloss/vim-javascript'
Plugin 'dracula/vim'
Plugin 'ctrlpvim/ctrlp.vim' " File seraching for vim
Plugin 'vim-python/python-syntax' " Python syntax highlighting
" Plugin 'Townk/vim-autoclose'      " Autoclose brackets and quotes


" My Color Schemes
Plugin 'tomasr/molokai'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline-themes'



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
" Put your non-Plugin stuff after this line




"""""""""""""""""""""""""General Configurations""""""""""""""""""""""""""""""""

set clipboard=unnamed

" Setting side bar numbers
set number

" Buffer switching
map gn :bn<cr>  " Next buffer
map gp :bp<cr>  " previous buffer
map gd :bd<cr>  " close buffer


" Enable searching for files in project
set path=$PWD/**

" Syntax and colors
set t_Co=256
syntax on
color dracula
let g:colors_name = 'dracula'

" Searching
set incsearch  " Displays search matches as you type
set hlsearch   " Highlights all search terms
set ignorecase " Default to ignoring case 
set smartcase  " However if there's a capital it's case sensitve

" Syntax Highlighting
syntax on
set showmatch " Jump to matching brackets
set list      " Show tabs and newlines
set listchars=tab:▸\ ,eol:¬

" Enable 80 chars line
set colorcolumn=80

" Enable mouse usage
:set mouse=a

" Enable deleting with backspace
:set backspace=indent,eol,start

" Tabulators
set tabstop=2
set shiftwidth=4
set expandtab
set smarttab
set nocindent

" Enablers
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'



""""""""""""""""""""""""""""Plugin Configurations""""""""""""""""""""""""""""""

" NERD TREE Config "
"""""""""""""""""""""
" Enable nerd tree toggling
map <C-n> :NERDTreeToggle<CR>
let g:nerdtree_tabs_open_on_gui_startup     = 1
let g:nerdtree_tabs_smart_startup_focus     = 1
let g:nerdtree_tabs_autoclose               = 1
let g:nerdtree_tabs_synchronize_view        = 1
let g:nerdtree_tabs_startup_cd              = 1
let g:nerdtree_tabs_autofind                = 1
"let g:nerdtree_tabs_open_on_console_startup = 1

let NERDTreeMouseMode=2


" Airline Config "
"""""""""""""""""""""
let g:airline_powerline_fonts            = 1
let g:airline_theme                      = 'powerlineish'
let g:airline#extensions#tabline#enabled = 1
let g:airline_inactive_collapse          = 1  " Collapse inactive sections
let g:airline_detect_paste               = 1  " Detect pastes
let g:airline#extensions#branch#enabled  = 1  " Git branch integration

set laststatus=2  " Always show statuslin

" Airline Sections
let g:airline_section_a = airline#section#create(['mode', ' ', 'branch'])


" Syntastic Config "
"""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0 
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" GitGutter Config "
"""""""""""""""""""""
set updatetime=250
let g:gitgutter_max_signs = 500  " default value (keep vim running fast)


" Autoclose Config "
""""""""""""""""""""
let g:AutoClosePumvisible = {"ENTER": "", "ESC": ""}
