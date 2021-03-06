" Base config {
	set nocompatible            	" Must be first line, be iMproved,Vundle required
	filetype off                	" Vundle required
	syntax enable
	"set number
	"set relativenumber
	set ignorecase
	set smartcase
	set hlsearch
	set incsearch
	set autoindent
	set smartindent
	set nobackup
	set autoread
	set backspace=2
	set tabstop=4
	set shiftwidth=4
	set scrolloff=5
	set nowrap
	set undofile
	set undodir=~/.vim
	set fileencodings=ucs-bom,utf-8,gbk,gb2312,cp936,gb18030,big5,latin-1
    set encoding=utf-8
    set termencoding=utf-8
    set fileencoding=utf-8
	colors desert
" }

" Vundle plugins {

	""" set the runtime path to include Vundle and initialize
	"set rtp+=~/.vim/bundle/Vundle.vim
	"call vundle#begin()
	""" let Vundle manage Vundle, required
	"Plugin 'VundleVim/Vundle.vim'
	"""""""""""""""""""" Add plugins start """""""""""""""""""" 
	"Plugin 'mbbill/undotree'
	"""""""""""""""""""" Add plugins end """""""""""""""""""""" 
	""" All of your Plugins must be added before the following line
	"call vundle#end()            " required
	"filetype plugin indent on    " required
" }

" Key mappings {
    "clear search highlight
    noremap <silent><Leader>/ :set hls!<CR>
	" split line
	nnoremap <C-j> i<CR><Esc>
	" yank to system clipborad
	nnoremap <leader>y "+y
	vnoremap <leader>y "+y
	" paste from system clipborad
	nmap <leader>p "+p
	cmap <leader>p <C-R>+
	" SudoEdit
	nmap <leader>s :SudoEdit<CR>
" }

" Other setting {
	"use xmllint format xml
	au FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null
" }
