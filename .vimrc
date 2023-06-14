set nocompatible

" relative line number
set relativenumber

" tab settings
set tabstop=8 " maximum width of tab measured in spaces
set softtabstop=0 " never combine tab chars and spaces
set shiftwidth=4 " size of indent measured in spaces
set expandtab " insert shifwidth number of spaces instead of tab char
set smarttab " insert spaces automatically for next indent

" only one unique clipboard -> makes copying from internet to vim easier
set clipboard=unnamed

" add highlighting while searching
set incsearch

" split default below and vsplit default right
set splitbelow splitright

" remap leader key
let mapleader=','
let maplocalleader=","

" check filetype
filetype plugin indent on

" python, markdown and julia compile key remap
autocmd FileType python noremap <leader><space> :w <CR> :term python3 %<CR>
autocmd FileType markdown noremap <leader><space> :w <CR> :! pandoc -s % -o out.pdf<CR> :! open out.pdf <CR><CR>
autocmd FileType julia noremap <leader><space> :w <CR> :term julia %<CR>

" autowrite when entering normal mode 
autocmd InsertLeave *.tex update

" cpp compile key remaps
autocmd FileType cpp noremap <leader><space> :w <CR> :silent make\|redraw!\|cc<CR>
autocmd FileType cpp noremap <leader>ci :w <CR> :terminal ./a.out<CR>
autocmd FileType cpp noremap <leader>co :w <CR> :tab terminal ./a.out<CR>
autocmd FileType cpp noremap <leader>cf :cn<CR>
autocmd FileType cpp noremap <leader>cd :cp<CR>
autocmd FileType cpp noremap <leader>cw :cw<CR>
autocmd FileType cpp noremap <leader>cc :cc<CR>

" external plugins
call plug#begin('~/.vim/plugged')
Plug 'jacoborus/tender.vim'
Plug 'JuliaEditorSupport/julia-vim'
Plug 'plasticboy/vim-markdown'
Plug 'lervag/vimtex'
call plug#end()

" using external colorscheme
" colorscheme tender

" blue scheme
colorscheme koehler

" skim pdf viewer for vimtex
let g:vimtex_view_method='skim'

" syntax highlighting
syntax on
