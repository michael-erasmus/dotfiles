set nocompatible

set hidden

"remap ; to :
nnoremap ; :

" Use pathogen to easily modify the runtime path to include all
" plugins under the ~/.vim/bundle directory
"call pathogen#helptags()
"call pathogen#runtime_append_all_bundles()

set bs=2 "set backspace to be able to delete previous characters
set number "Enable line numbering, taking up 6 spaces

"Turn off word wrapping
set wrap!

"Turn on smart indent
set smartindent
set autoindent
set copyindent    " copy the previous indentation on autoindenting
set cindent
set tabstop=2 "set tab character to 4 characters
set expandtab "turn tabs into whitespace
set shiftwidth=2 "indent width for autoindent
filetype indent on "indent depends on filetype

set backspace=indent,eol,start " allow backspacing over everything in insert mode

"Shortcut to auto indent entire file
nmap <F11> 1G=G
imap <F11> <ESC>1G=Ga

"Turn on incremental search with ignore case (except explicit caps)
set incsearch
set ignorecase
set smartcase
"Informative status line
set statusline=%F%m%r%h%w\ [TYPE=%Y\ %{&ff}]\ [%l/%L\ (%p%%)]

"don't do backups
set nobackup
set noswapfile

"Set color scheme
colorscheme desert
syntax enable

"Enable indent folding
"set foldenable
":set fdm=indent

"Set space to toggle a fold
nnoremap <space> za

"Have 3 lines of offset (or buffer) when scrolling
set scrolloff=3


" Let's make it easy to edit this file (mnemonic for the key sequence is
" 'e'dit 'v'imrc)
nmap <silent> ,ev :e $MYVIMRC<cr>

" And to source this file as well (mnemonic for the key sequence is
" 's'ource 'v'imrc)
nmap <silent> ,sv :so $MYVIMRC<cr>

filetype plugin on
set ofu=syntaxcomplete#Complete

"set lines=999
"set columns=999
set statusline+=%{rvm#statusline()} "
cabbr <expr> %% expand('%:p:h')
