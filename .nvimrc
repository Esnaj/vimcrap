
" required before Vundle initialization set nocompatible        " disable compatibility mode with vi
" filetype off            " disable filetype detection (but re-enable later, see below)
" set the runtime path to include Vundle, and initialize
" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()
" Plugin 'VundleVim/Vundle.vim'
" Plugin 'wting/rust.vim' " enable syntax highlighting for rust
" call vundle#end()


call plug#begin('~/Config/.nvim/plugged')
" Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
" Plug 'valloric/youcompleteme'
Plug 'preservim/nerdtree'
Plug 'vim-scripts/loremipsum'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/vim-jsx-improve'
Plug 'sickill/vim-monokai'
Plug 'gruvbox-community/gruvbox'
Plug 'frazrepo/vim-rainbow'
Plug 'airblade/vim-gitgutter/'
Plug 'tpope/vim-fugitive'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf'
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }
Plug 'dense-analysis/ale'
Plug 'mbbill/undotree'
Plug 'tpope/vim-commentary'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'
Plug 'psf/black'
call plug#end()

let mapleader = " "

nnoremap <leader>n :NERDTreeFocus <CR>
nnoremap <leader>w :w <CR>
nnoremap <leader>q :q <CR>
nnoremap <leader>f :FZF <CR>
nnoremap <leader>p :Prettier <CR>
nnoremap <leader>h <C-w>h
nnoremap <leader>l <C-w>l
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>s <C-w>s
nnoremap <leader>v <C-w>v


" if python file autoformat with black instead
autocmd FileType python nnoremap <leader>p :Black <CR>

" unmap <F1>


set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile


set bg=dark
syntax enable
colorscheme gruvbox

" let g:ycm_clangd_binary_path = trim(system('brew --prefix llvm')).'/bin/clangd'
"
"

" coc config
let g:coc_global_extensions = [
    \'coc-snippets',
    \'coc-pairs',
    \'coc-prettier',
    \'coc-python',
\]

command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument

set mouse=v


"""" Basic Behavior

set number              " show line numbers
set relativenumber      " show relatives 
set nowrap              " wrap lines
set encoding=utf-8      " set encoding to UTF-8 (default was "latin1")
" set mouse=a             " enable mouse support (might not work well on Mac OS X)
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw screen only when we need to
set showmatch           " highlight matching parentheses / brackets [{()}]
set laststatus=2        " always show statusline (even with only single window)
set ruler               " show line and column number of the cursor on right side of statusline
set visualbell          " blink cursor on error, instead of beeping
set scrolloff=8
set colorcolumn=80
set signcolumn=yes


"""" Key Bindings

" move vertically by visual line (don't skip wrapped lines)
nmap <F1> <nop>


"""" Vim Appearance

" put colorscheme files in ~/.vim/colors/
" colorscheme murphy      " good colorschemes: murphy, slate, molokai, badwolf, solarized

" use filetype-based syntax highlighting, ftplugins, and indentation
syntax enable
filetype plugin indent on


"""" Tab settings

set tabstop=4           " width that a <TAB> character displays as
set expandtab           " convert <TAB> key-presses to spaces
set shiftwidth=4        " number of spaces to use for each step of (auto)indent
set softtabstop=4       " backspace after pressing <TAB> will remove up to this many spaces

set autoindent          " copy indent from current line when starting a new line
set smartindent         " even better autoindent (e.g. add indent after '{')


"""" Search settings

set incsearch           " search as characters are entered
set hlsearch            " highlight matches

" turn off search highlighting with <CR> (carriage-return)
nnoremap <CR> :nohlsearch<CR><CR>


"""" Miscellaneous settings that might be worth enabling

"set cursorline         " highlight current line
"set background=dark    " configure Vim to use brighter colors
"set autoread           " autoreload the file in Vim if it has been changed outside of Vim
