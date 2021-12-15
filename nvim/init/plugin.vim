" Managed by vim-plug - https://github.com/junegunn/vim-plug
" .local/share/nvim/plugged
" PlugInstall PlugUpdate PlugClean
call plug#begin(stdpath('data') . '/plugged')

	Plug 'preservim/nerdtree'

	" Semantic language support
	Plug 'neoclide/coc.nvim', {'branch': 'release'}

	" Syntactic language support
	Plug 'rust-lang/rust.vim'
	Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

	" Git related stuffs
	Plug 'tpope/vim-fugitive'
	
	" FZF - take a bow 
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	
	" Spice up the status line
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	

call plug#end()
