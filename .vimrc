" Vundle Configurations

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'scrooloose/syntastic'

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
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve r    emoval
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" performs syntastic check on :wq & :w
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1 
let g:syntastic_auto_loc_list = 1 
let g:syntastic_check_on_open = 0 
let g:syntastic_check_on_wq = 1 
let g:syntastic_c_remove_include_errors = 1 
" making syntastic disabled on default, activated when pressed ctrl+w E
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
nnoremap <C-w>E :SyntasticCheck<CR> :SyntasticToggleMode<CR>
" end of syntastic check

color torte
" show existing tab with 4 spaces width
filetype plugin indent on
" when indenting with '>', use 4 spaces width
set tabstop=4
" On pressing tab, insert 4 spaces
set shiftwidth=4
set expandtab
syntax on
set number
set hlsearch
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
hi LineNr ctermfg=grey
