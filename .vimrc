"------------------------"
"       For Coding       "
"------------------------"
filetype indent on
set cindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set showmatch
set nobackup
set noundofile
" set mouse=a
set hlsearch
set fileencodings=utf-8,cp936
set fileencoding=utf-8
" set warning area and dangerous area of coding width
let &colorcolumn="80,".join(range(120,999),",")

" set cmdheight = 2

"------------------------"
"      For Shortcut      "
"------------------------"
"-----------------------"
"      For Plugins      "
"-----------------------"

""""""""""""""""
"    Vundle    "
""""""""""""""""
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim' "required!

" Plugins
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'
" java completion
Plugin 'artur-shaik/vim-javacomplete2'
" python completion
Plugin 'davidhalter/jedi-vim'
" for scala
Plugin 'derekwyatt/vim-scala'
" for brackets completion
Plugin 'Raimondi/delimitMate'
" for shell interaction, e.g. python
" Plugin 'metakirby5/codi.vim'


" Colorscheme
Plugin 'morhetz/gruvbox'
call vundle#end()

filetype plugin indent on


"""""""""""""""""
"    Airline    "
""""""""""""""""" 
let g:airline_symbols={}
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.readonly = '⭤'
let g:airline_symbols.linenr = '⭡'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = '⮀'
let g:airline#extensions#tabline#left_alt_sep = '⮁'

"""""""""""""""""""
"  YouCompleteMe  "
"""""""""""""""""""
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
autocmd InsertLeave * if pumvisible() == 0|pclose|endif "auto close preview window
"""""""""""""""""""
"    syntastic    "
"""""""""""""""""""
let g:syntastic_java_javac_classpath=$CLASS_PATH

"""""""""""""""""""""""
"    java-complete    "
"""""""""""""""""""""""
autocmd FileType java setlocal omnifunc=javacomplete#Complete
let g:JavaComplete_LibsPath = $CLASS_PATH
nmap <F6> <Plug>(JavaComplete-Imports-AddMissing)
imap <F6> <Plug>(JavaComplete-Imports-AddMissing)
nmap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)
imap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)


"""""""""""""""""""""""
"      jedi-vim       "
"""""""""""""""""""""""
autocmd FileType python setlocal omnifunc=jedi#completions

""""""""""""""""""
"    nerdtree    "
""""""""""""""""""
"au VimEnter * NERDTree
let NERDTreeChDirMode=1
let NERDTreeWinpos="left"
let NERDTreeWinSize = 20
let NERDTreeDirArrors=1
" auto close
let NERDTreeQuitOnOpen=1

""""""""""""""""""""
"      tagbar      "
""""""""""""""""""""
let g:tagbar_width=60
let g:tagbar_compact = 1
"autocmd VimEnter * nested :call tagbar#autoopen(1)
let g:tagbar_foldlevel=2
"let g:tagbar_sort=0

""""""""""""""""""""
"       codi       "
""""""""""""""""""""
let g:codi#interpreters = {
      \ 'python': {
          \ 'bin': 'python2',
          \ 'prompt': '^\(>>>\|\.\.\.\) ',
          \ },
      \ }


"-------------------------"
"      The Interface      "
"-------------------------"
let base16colorspace=256
set guifont=Monaco\ 11
" colorscheme molokai
" colorscheme molokai
" colorscheme Tomorrow
" colorscheme Tomorrow-Night-Blue
" colorscheme Tomorrow-Night-Bright
" colorscheme Tomorrow-Night-Eighties
" colorscheme Tomorrow-Night
" colorscheme Tomorrow

set background=dark
colorscheme gruvbox

set nu!
set laststatus=2
" set cmdheight=2
set cursorline
set shortmess=atI
set ignorecase smartcase

set guioptions-=L
set guioptions-=r
set guioptions-=m
set guioptions-=T
map <silent> <F2> :if &guioptions =~# 'T' <Bar>
\set guioptions-=T <Bar>
\set guioptions-=m <Bar>
\else <Bar>
\set guioptions+=T <Bar>
\set guioptions+=m <Bar>
\endif <CR>

"set lines=30 columns=100
syntax enable
syntax on
set t_Co=256
