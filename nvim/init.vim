source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/general/statusline.vim

" Managed by vim-plug - https://github.com/junegunn/vim-plug
" .local/share/nvim/plugged
" PlugInstall PlugUpdate PlugClean
call plug#begin(stdpath('data') . '/plugged')

	Plug 'preservim/nerdtree'

	" Coc .config/coc
	" Rust - https://github.co:m/neoclide/coc-rls
	Plug 'neoclide/coc.nvim', {'branch': 'release'}

	" Git related stuffs
	Plug 'tpope/vim-fugitive' 

call plug#end()

" NerdTree
map <C-n> :NERDTreeToggle<CR>



