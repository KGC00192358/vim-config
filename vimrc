set nocompatible              " required
filetype plugin on" required
filetype indent on
let g:tex_flavor='latex'
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'tmhedberg/SimplyFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
"Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set nu
" Enable Folding with spacebard in normal mode
set foldmethod=indent
set foldlevel=99
nnoremap <space> za
"key mappings
let mapleader = "-"
let maplocalleader = "\\"
noremap <leader>- ddo<esc>kp
noremap <leader>_ ddkkp
noremap <leader>ev :vsplit $MYVIMRC<cr>
noremap <leader>sv :source $MYVIMRC<cr>
inoremap <c-u> <esc>viwUi
nnoremap <c-u> viwU<esc>
nnoremap <leader>i ggvG=
nnoremap <leader>w dwi
"Abrevviations
iabbrev --- ---------------------------------------------------------------------------

iabbrev adn and
iabbrev waht what
iabbrev kk Kevin Conyers
iabbrev @@ kgc0019@tigermail.auburn.edu
iabbrev ** /**/
"python specfic settings
au FileType py
			\  setlocal tabstop =4
			\| setlocal softtabstop=4
			\| setlocal shiftwidth =4
			\| setlocal textwidth = 79
			\| setlocal expandtab
			\| setlocal autoindent
			\| setlocal fileformat=unix
			\| setlocal encoding=utf-8
au FileType py  match BadWhiteSpcae /\s\+$/
let python_highlight_all =1
syntax on

"C++ settings
autocmd BufNewFile *.cpp r ~/.vim/snippets/cppTemplate1.cpp
map <F8> :!g++ % && ./a.out <CR>



"YouCompleteMe settings
let g:ycm_keep_logfiles = 1
let g:ycm_log_level = 'debug'

"Python settings
autocmd BufNewFile *.py -1read ~/.vim/snippets/pythonTemplate1.py

