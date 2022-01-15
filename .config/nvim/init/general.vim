
" =============================================================================
" # Editor settings
" =============================================================================
set nu rnu 			
set autoindent	

syntax enable
filetype plugin indent on
silent! colorscheme monokai

" Theme
set termguicolors
let base16colorspace=256  " Access colors present in 256 colorspace
silent! colorscheme base16-onedark
"silent! colorscheme monokai
set showtabline=2
let g:airline_theme='base16'

" =============================================================================
" # GUI settings
" =============================================================================
set mouse=a		


" =============================================================================
" # Keyboard shortcuts
" =============================================================================
let mapleader = ","

imap jj <Esc>

