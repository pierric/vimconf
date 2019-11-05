set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
Plugin 'L9'
Plugin 'milkypostman/vim-togglelist'
Plugin 'kien/ctrlp.vim'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'vim-scripts/Mark--Karkat'
Plugin 'vim-scripts/mru.vim.git'
Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'scrooloose/nerdtree.git'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'sakshamgupta05/vim-todo-highlight'
Plugin 'ntpeters/vim-better-whitespace'
"Plugin 'airblade/vim-gitgutter'
Plugin 'davidhalter/jedi-vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'neomake/neomake'
Plugin 'jiangmiao/auto-pairs'
Plugin 'vim-airline/vim-airline'
Plugin 'jreybert/vimagit'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'ndmitchell/ghcid', { 'rtp': 'plugins/nvim' }
Plugin 'vmchale/c2hs-vim'
Plugin 'vmchale/hs-conceal'
Plugin 'Twinside/vim-hoogle'
Plugin 'vmchale/pointfree'
call vundle#end()
filetype plugin indent on
set fileencodings=ucs-bom,utf-8,gbk,cp936
set tags=tags;
" set autochdir
set number relativenumber
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set ruler
set incsearch
set backspace=2
set whichwrap+=<,>,h,l
set expandtab
set ruler
set laststatus=2
set t_Co=256
set browsedir=buffer
set mouse=a
syntax on
colorscheme PaperColor

set clipboard=unnamedplus

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd FileType python setlocal omnifunc=jedi#completions

let g:better_whitespace_ctermcolor='lightblue'
let g:better_whitespace_guicolor='lightblue'
let g:neomake_python_enabled_makers = ['pylint']

call neomake#configure#automake('nrwi', 500)

"function! AirlineInit()
"    let g:airline_section_a = airline#section#create(['mode', ' ', 'branch'])
"endfunction
"autocmd VimEnter * call AirlineInit()
au BufNewFile,BufRead *.hs map <buffer> <F1> :Hoogle
