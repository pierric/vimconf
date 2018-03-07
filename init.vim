
" # install dein package manager
" curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
" sh ./installer.sh ~/.config/nvim/dein
" #and run the following command afterwards :call dein#install()

set nocompatible
set runtimepath+=~/.config/nvim/dein/repos/github.com/Shougo/dein.vim " path to dein.vim
call dein#begin(expand('~/.config/nvim/dein')) " plugins' root path
call dein#add('Shougo/dein.vim')
call dein#add('Shougo/vimproc.vim', {
    \ 'build': {
    \     'windows': 'tools\\update-dll-mingw',
    \     'cygwin': 'make -f make_cygwin.mak',
    \     'mac': 'make -f make_mac.mak',
    \     'linux': 'make',
    \     'unix': 'gmake',
    \    },
    \ })
call dein#add('Shougo/unite.vim')
call dein#add('kien/ctrlp.vim')
call dein#add('floobits/floobits-neovim')
call dein#add('parsonsmatt/intero-neovim')
call dein#add('rafi/awesome-vim-colorschemes')
" and a lot more plugins.....
call dein#end()

" enable paste with middle button
set mouse=a
set number
set tabstop=4
set shiftwidth=4
set ruler
set expandtab
set laststatus=2
set autoindent
set smartindent
syntax on
colorscheme angr

" install 'neovim' package in both conda environment
" and invoke 'CheckHealth' in neovim
let g:python3_host_prog='C:/Users/jiase/Miniconda3/envs/neovim-py3/python.exe'
let g:python_host_prog='C:/Users/jiase/Miniconda3/envs/neovim-py2/python.exe'

" paste with shift+insert (insert mode)
imap <S-Insert> <C-R>*
