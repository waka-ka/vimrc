syntax on
colorscheme molokai
set t_Co=256
set number 
filetype plugin indent on 
autocmd BufNewFile,BufRead *.slim set ft=slim
set title
set showmatch
set cursorline
set clipboard=unnamed
set smarttab
set ignorecase
set smartcase
set hls
set wrapscan 
set expandtab 
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent 
set smartindent 
set mouse= " enable mouse
set nrformats= "treat all numerals as decimal
" vimにcoffeeファイルタイプを認識させる
au BufRead,BufNewFile,BufReadPre *.coffee   set filetype=coffee
" " インデントを設定
autocmd FileType coffee     setlocal sw=2 sts=2 ts=2 et

" new setup from the book
set wildmenu wildmode=list:full

"-------------------------------------------
" NeoBundle plugins
"-------------------------------------------

if !1 | finish | endif

if has('vim_starting')
  if &compatible
    set nocompatible
  endif

  set runtimepath+=~/.vim/bundle/neobundle.vim
endif

call neobundle#begin(expand('~/.vim/bundle'))

NeoBundleFetch 'Shougo/neobundle.vim'


filetype plugin indent on

NeoBundleCheck

NeoBundle 'tpope/vim-surround'
NeoBundle 'rstacruz/sparkup'
NeoBundle 'mattn/emmet-vim' "html5: <c-t> ,
  let g:user_emmet_leader_key = '<c-t>'
NeoBundle 'jiangmiao/simple-javascript-indenter'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'tpope/vim-rails'
NeoBundle '2072/PHP-Indenting-for-VIm'
NeoBundle 'othree/html5-syntax.vim'
NeoBundle 'othree/html5.vim'
NeoBundle 'hynek/vim-python-pep8-indent'
NeoBundle 'slim-template/vim-slim'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'basyura/unite-rails'

call neobundle#end()

"------------------------------------------- 
" MAPPING 
"-------------------------------------------
let mapleader=","
noremap \ ,

noremap <Leader>w :w<CR>
noremap <Leader>q :wq<CR>

" バッファ移動系
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> [B :blast<CR>

" スプリットウインドウ系
nnoremap <silent> ss :split<CR>
nnoremap <silent> sv :vsplit<CR>
nnoremap <silent> sh <C-w>h<CR>
nnoremap <silent> sj <C-w>j<CR>
nnoremap <silent> sk <C-w>k<CR>
nnoremap <silent> sl <C-w>l<CR>

" タブページ系
nnoremap <silent> st :tabnew<CR>
nnoremap <silent> s<Right> gt<CR>
nnoremap <silent> s<Left> gT<CR>

nnoremap <silent> Y y$
