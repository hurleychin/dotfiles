" Base config {
	set nocompatible            	" Must be first line, be iMproved,Vundle required
	filetype off                	" Vundle required
	syntax enable
	set number
	set relativenumber
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
" }

" Vundle plugins {

	"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
	"																					"
	" $ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim	" 
	"																					"
	"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

	"set the runtime path to include Vundle and initialize
	set rtp+=~/.vim/bundle/Vundle.vim
	call vundle#begin()
	"let Vundle manage Vundle, required
	Plugin 'VundleVim/Vundle.vim'
	"""""""""""""""""""" Add plugins start """""""""""""""""""" 
	"vim surround
	Plugin 'tpope/vim-surround'
	"NERD tree
	Plugin 'scrooloose/nerdtree'
	"Easy Motion
	Plugin 'easymotion/vim-easymotion'
	"vim-fugitive ( a Git wrapper so awesome )
	Plugin 'tpope/vim-fugitive'
	"ctrlp (Full path fuzzy file, buffer, mru, tag, ... finder for Vim.)
	Plugin 'ctrlpvim/ctrlp.vim'
	"vim-exchange
	Plugin 'tommcdo/vim-exchange'
	"undotree
	Plugin 'mbbill/undotree'
	"Vim sugar for UNIX shell commands that need it the most.
	Plugin 'tpope/vim-eunuch'
	"vim-toml
	Plugin 'cespare/vim-toml'
	"vim-airline
	Plugin 'vim-airline/vim-airline'
	Plugin 'vim-airline/vim-airline-themes'
	"""""""""""""""""""" Add plugins end """""""""""""""""""""" 
	" All of your Plugins must be added before the following line
	call vundle#end()            " required
	filetype plugin indent on    " required
" }

" Key mappings {
    "clear search highlight
    noremap <silent><Leader>/ :set hls!<CR>
	"toggle nerdtree
	map <Leader>e :NERDTreeToggle<CR>
	"map <silent> <Leader>s :NERDTree<CR><C-w>p:NERDTreeFind<CR>
	" Use <Leader>a/b add a new white-space line above/belowe cursor in normal mode
	nmap <Leader>b o<ESC>
	nmap <Leader>a O<ESC>
	" ZS map to :update
	nmap ZS :update<CR>
	" instant markdown
	map <Leader>m :InstantMarkdownPreview<CR>
	" CtrlP
	let g:ctrlp_cmd = 'CtrlPBuffer'
	" gb map to gT
	nnoremap gb gT
	" split line
	nnoremap <C-j> i<CR><Esc>
	" undotree
	nnoremap <leader>u :UndotreeToggle<CR>
	" paste from YANK register
	nnoremap 0p "0p
	nnoremap 0P "0P
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
    "automatically reload vimrc when it's saved
    au BufWritePost .vimrc so ~/.vimrc
	"fix color in tmux
	"set background=dark
	"use xmllint format xml
	au FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null

	"airline config
	set background=dark
	set noshowmode
	let g:airline_powerline_fonts=1
	let g:airline_theme='molokai'
" }
