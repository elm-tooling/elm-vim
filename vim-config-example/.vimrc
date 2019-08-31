set nocompatible
set hidden
set encoding=utf-8
set ttyfast
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
set shell=/bin/sh

"" Fix backspace indent
set backspace=indent,eol,start

filetype plugin indent on
syntax on

" Install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'andys8/vim-elm-syntax', { 'for': ['elm'] }
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

" Initialize plugin system
call plug#end()

" Keybindings

" Map leader to ,
let mapleader=','

nmap <leader>r <Plug>(coc-rename)
nmap <silent> <leader>s <Plug>(coc-fix-current)
nmap <silent> <leader>S <Plug>(coc-codeaction)
nmap <silent> <leader>a <Plug>(coc-diagnostic-next)
nmap <silent> <leader>A <Plug>(coc-diagnostic-next-error)
nmap <silent> <leader>d <Plug>(coc-definition)
nmap <silent> <leader>g :call CocAction('doHover')<CR>
nmap <silent> <leader>u <Plug>(coc-references)
nmap <silent> <leader>p :call CocActionAsync('format')<CR>
