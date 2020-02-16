set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Bundle 'Lokaltog/vim-easymotion'
Bundle 'Lokaltog/vim-powerline'
Bundle 'airblade/vim-gitgutter'
Bundle 'kien/ctrlp.vim'

"markdown tools are necessary
"Plugin 'godlygeek/tabular'
"Plugin 'plasticboy/vim-markdown'

"dev tools... (need to setup ones for ruby/python/bash ..etc
Bundle 'ycm-core/YouCompleteMe'
Plugin 'rhysd/vim-clang-format'

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
"
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

set backspace=indent,eol,start
syntax on

" src: https://gist.github.com/rocarvaj/2513367
" configure tabwidth and insert spaces instead of tabs
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set expandtab        " expand tabs to spaces
" wrap lines at 120 chars. 80 is somewaht antiquated with nowadays displays.
set textwidth=120
" turn syntax highlighting on
set t_Co=256
set number relativenumber

"highlight Pmenu ctermfg=2 ctermbg=3 guifg=#ffffff guibg=#0000ff
" need to change the color of highlight... turn it off for now
highlight clear SpellBad
"highlight link SyntasticError SpellBad
highlight link SyntasticWarning SpellCap

let g:clang_format#code_style = "chromium"
let g:ycm_global_ycm_extra_conf = '$HOME/.ycm_extra_conf.py'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|.git|public'
let g:ctrlp_working_path_mode = 0

set encoding=utf-8 " for you complete me?
set autoread
set autowrite
"set autochdir

" no more shift, thanks god
nnoremap ; :
vnoremap ; :
" esc in insert mode
inoremap kj <esc>
imap <C-L> <Esc>
" esc in command mode
cnoremap kj <C-C>
