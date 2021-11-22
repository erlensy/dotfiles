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
let mapleader = ','

" remap compile and build keys
filetype plugin indent on
autocmd FileType tex noremap <leader><space> :w <CR> :! pdflatex -shell-escape %<CR> : ! open $(echo % \| sed 's/tex$/pdf/') & disown<CR><CR>
autocmd FileType python noremap <leader><space> :w <CR> :term python3 %<CR>
autocmd FileType cpp noremap <leader><space> :silent make\|redraw!\|cc<CR>
autocmd FileType cpp noremap <leader>o :w <CR> :term ./a.out<CR>
autocmd FileType cpp noremap <leader>cf :cn<CR>
autocmd FileType cpp noremap <leader>cd :cp<CR>
autocmd FileType cpp noremap <leader>cw :cw<CR>
autocmd FileType cpp noremap <leader>cc :cc<CR>

" external plugins
call plug#begin('~/.vim/plugged')
Plug 'jacoborus/tender.vim' " colorscheme
Plug 'JuliaEditorSupport/julia-vim' " extra julia support (ex : \theta)
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " install fuzzyfinder
Plug 'junegunn/fzf.vim' " fuzzyfinder
call plug#end()

" using external colorscheme
colorscheme tender

" syntax highlighting
syntax on
