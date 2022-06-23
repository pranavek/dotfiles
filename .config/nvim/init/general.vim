
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

" Persistent undo
set undofile                 "turn on the feature  
silent !mkdir -p /tmp/.vim/undo
set undodir=/tmp/.vim/undo  "directory where the undo files will be stored

" Corrections for common mistakes.
command! W w
command! Q q
command! Wq wq

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
inoremap ` ``<Esc>ha

" Map Ctrl-Backspace to delete the previous word in insert mode.
imap <C-BS> <C-W>

" NERDTree
:nnoremap <C-g> :NERDTreeToggle<CR>

" FZF
nnoremap <silent><leader>b :Buffers<CR>
nnoremap <C-p> :Files<Cr>
nnoremap <C-g> :Rg<Cr>

"Vimspector
let g:vimspector_enable_mappings = 'VISUAL_STUDIO'
nnoremap <Leader>dd :call vimspector#Launch()<CR>
nnoremap <Leader>de :call vimspector#Reset()<CR>
nnoremap <Leader>dc :call vimspector#Continue()<CR>

nnoremap <Leader>dt :call vimspector#ToggleBreakpoint()<CR>
nnoremap <Leader>dT :call vimspector#ClearBreakpoints()<CR>

nmap <Leader>dk <Plug>VimspectorRestart
nmap <Leader>dh <Plug>VimspectorStepOut
nmap <Leader>dl <Plug>VimspectorStepInto
nmap <Leader>dj <Plug>VimspectorStepOver
