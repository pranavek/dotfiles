
" =============================================================================
" # Editor settings
" =============================================================================
set nu rnu 			
set autoindent
set mouse=a		
set wrap " Wrap long lines, instead of cutting them off, or making me scroll.
set linebreak "Avoid wrapping a line in the middle of a word
set ruler "Always show cursor position
set visualbell "Flash the screen instead of beeping on errors
set title "Set the window’s title, reflecting the file currently being edited
set background=dark "Use colors that suit a dark background

syntax enable
filetype plugin indent on

if has('persistent_undo')      "check if your vim version supports it
  set undofile                 "turn on the feature  
  silent !mkdir -p ~/.vim/undo
  set undodir=$HOME/.vim/undo  "directory where the undo files will be stored
endif   

" Theme
set termguicolors
let base16colorspace=256  " Access colors present in 256 colorspace
silent! colorscheme base16-onedark
let g:airline_theme='base16'

" =============================================================================
" # Keyboard shortcuts
" =============================================================================
let mapleader = ","

imap jj <Esc>

inoremap { {}<Esc>ha
inoremap ( ()<Esc>ha
inoremap [ []<Esc>ha
inoremap " ""<Esc>ha
inoremap ' ''<Esc>ha
inoremap ` ``<Esc>ha

" NERDTree
:nnoremap <C-g> :NERDTreeToggle<CR>

" FZF
nnoremap <silent><leader>b :Buffers<CR>
nnoremap <C-p> :Files<Cr>
nnoremap <C-g> :Rg<Cr>
