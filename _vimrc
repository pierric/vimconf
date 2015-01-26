set nocompatible
filetype off
if has('win32') || has('win64')
    set rtp+=~/vimfiles/bundle/vundle/
else    
set rtp+=~/.vim/bundle/vundle/
endif
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'L9'
Bundle 'https://github.com/vim-scripts/cscope.vim.git'
Bundle 'https://github.com/steffanc/cscopemaps.vim.git'
Bundle 'https://github.com/milkypostman/vim-togglelist.git'
Bundle 'bling/vim-airline'
Bundle 'kien/ctrlp.vim'
" Bundle 'xolox/vim-misc'
" Bundle 'xolox/vim-session'
Bundle 'tacahiroy/ctrlp-funky'
Bundle 'vim-scripts/taglist.vim'
Bundle 'majutsushi/tagbar'
Bundle 'vim-scripts/Mark--Karkat'
filetype plugin indent on
set fileencodings=ucs-bom,utf-8,gbk,cp936
set tags=tags;
set autochdir
set number
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
syntax on

if has('win32') || has('win64')
    set encoding=utf-8
    language messages zh_CN.utf-8
    set fileencodings=ucs-bom,utf-8,gbk,cp936
    set guifont=DejaVu_Sans_Mono_for_Powerline:h12
    set guifontwide=NSimSun:h12
    let g:vimwiki_list = [{'path': 'C:/Workspace/VIM/vimwiki/', 
                        \  'path_html': 'C:/Workspace/VIM/vimhtml/',
                        \  'template_path': 'C:/Workspace/VIM/templates/',
                        \  'template_default': 'default',
                        \  'template_ext': '.html'}]
    let g:vimwiki_use_calendar = 1
	let g:vimwiki_valid_html_tags = 'center,strong,font' 
endif

" nmap <Tab> <c-w><c-w><c-w>=
" nmap <F2>  :Explore<cr>
" nmap <F3>  :copen<cr>
" nmap <F4>  :cclose<cr>
" nmap <F5>  :vimgrep <cword> **<cr>

" if has('cscope')
"     set cscopetag cscopeverbose
"     if has('quickfix')
"         set cscopequickfix=s-,c-,d-,i-,t-,e-
"     endif
"     cnoreabbrev csa cs add
"     cnoreabbrev csf cs find
"     cnoreabbrev csk cs kill
"     cnoreabbrev csr cs reset
"     cnoreabbrev css cs show
"     cnoreabbrev csh cs help
" endif

if has('ctrlp')
    let g:ctrlp_map = '<c-p>'
    let g:ctrlp_cmd = 'CtrlP'
    let g:ctrlp_extensions = ['funky']
    nnoremap <Leader>fu :CtrlPFunky<Cr>
    " narrow the list down with a word under cursor
    nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
endif

" let g:session_autosave = 'no'
" let g:session_autoload = 'no'

" function! AirlineInit()
"     let g:airline_section_a = airline#section#create(['mode',' ','branch'])
"     let g:airline_section_b = airline#section#create_left(['ffenc','hunks','%f'])
"     let g:airline_section_c = airline#section#create(['filetype'])
"     let g:airline_section_x = airline#section#create(['%P'])
"     let g:airline_section_y = airline#section#create(['%B'])
"     let g:airline_section_z = airline#section#create_right(['%l','%c'])
" endfunction
" autocmd VimEnter * call AirlineInit()
let g:airline_theme             = 'powerlineish'
let g:airline_enable_branch     = 1
let g:airline_enable_syntastic  = 1
let g:airline_powerline_fonts   = 1
let g:airline#extensions#tabline#enabled = 1

let $PATH .=':/home/sg1/.cabal/bin'
let g:tagbar_type_haskell = {
    \ 'ctagsbin'  : 'hasktags',
    \ 'ctagsargs' : '-x -c -o-',
    \ 'kinds'     : [
        \  'm:modules:0:1',
        \  'd:data: 0:1',
        \  'd_gadt: data gadt:0:1',
        \  't:type names:0:1',
        \  'nt:new types:0:1',
        \  'c:classes:0:1',
        \  'cons:constructors:1:1',
        \  'c_gadt:constructor gadt:1:1',
        \  'c_a:constructor accessors:1:1',
        \  'ft:function types:1:1',
        \  'fi:function implementations:0:1',
        \  'o:others:0:1'
    \ ],
    \ 'sro'        : '.',
    \ 'kind2scope' : {
        \ 'm' : 'module',
        \ 'c' : 'class',
        \ 'd' : 'data',
        \ 't' : 'type'
    \ },
    \ 'scope2kind' : {
        \ 'module' : 'm',
        \ 'class'  : 'c',
        \ 'data'   : 'd',
        \ 'type'   : 't'
    \ }
\ }
let g:tagbar_left = 1
nmap <F8> :TagbarToggle<CR>
