"Installing Plugins

if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

	Plug 'vimwiki/vimwiki'
	Plug 'junegunn/goyo.vim'
	Plug 'scrooloose/nerdtree'
	Plug 'ap/vim-buftabline'
	Plug 'yggdroot/indentline'
	Plug 'tpope/vim-commentary'
	Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' }
	Plug 'machakann/vim-sandwich'
	Plug 'Jiangmiao/auto-pairs'
	Plug 'ludovicchabant/vim-gutentags'
	Plug 'majutsushi/tagbar'
	Plug 'airblade/vim-gitgutter'

	"Syntax Highligting and Intellisense
		Plug 'neoclide/coc.nvim', {'branch': 'release'}
		Plug 'leafgarland/typescript-vim'
		Plug 'peitalin/vim-jsx-typescript'
		Plug 'othree/html5.vim'
		Plug 'MaskRay/ccls'
		Plug 'justinmk/vim-syntax-extra'
		Plug 'tpope/vim-classpath'
	Plug 'NLaundry/vim-janah'
	Plug 'ryanoasis/vim-devicons'
call plug#end()

set nocompatible

let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 2
set autoindent
set smartindent

set ignorecase
set smartcase

syntax on
set number
set tabstop=4
set expandtab
set sw=4
set nowrap
set nocursorline
set relativenumber

set noshowmode
set noruler
set laststatus=0
set hidden
set scrolloff=10

color janah

filetype plugin on
let wiki_1 = {}
let wiki_1.path = '~/Documents/School/Notes'
let wiki_1.syntax = 'markdown'
let wiki_1.ext = '.md'

let g:vimwiki_list = [wiki_1]
let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "<C-y>" : "\<C-g>u\<CR>"
let g:coc_global_extensions = ['coc-clangd', 'coc-json',  'coc-tsserver', 'coc-tslint', 'coc-angular']
vmap <leader>f <Plug>(coc-format-selected)
nmap <leader>f <Plug>(coc-format-selected)


map <C-n> :NERDTreeToggle<CR>
let NERDTreeMinimalUI=1
let g:NERDTreeQuitOnOpen=1
