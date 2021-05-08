" Managed by vim-plug - https://github.com/junegunn/vim-plug
" .local/share/nvim/plugged
" PlugInstall PlugUpdate PlugClean
call plug#begin(stdpath('data') . '/plugged')

	Plug 'preservim/nerdtree'

	" Semantic language support
	Plug 'neoclide/coc.nvim', {'branch': 'release'}

	" Syntactic language support
	Plug 'rust-lang/rust.vim'

	" Git related stuffs
	Plug 'tpope/vim-fugitive'
	
	" FZF - take a bow 
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'

call plug#end()
