set statusline=
"buffernr
set statusline+=%7*\[%n]                                  
"File description
set statusline+=%9*\ %f\ %h%m%r%w		          
"FileType
set statusline+=%2*\ %y\                                  
" Name of the current branch (needs fugitive.vim)
set statusline +=\ %{fugitive#statusline()}
"Encoding
set statusline+=%3*\ %{''.(&fenc!=''?&fenc:&enc).''}      
"Encoding2
set statusline+=%3*\ %{(&bomb?\",BOM\":\"\")}\            
"FileFormat (dos/unix..) 
set statusline+=%4*\ %{&ff}\                              
"Spellanguage
set statusline+=%5*\ %{&spelllang}\                       
" Date of the last time the file was saved 
set statusline+=%1*\ %{strftime(\"[%d/%m/%y\ %T]\",getftime(expand(\"%:p\")))} 
"Rownumber/total (%)
set statusline+=%8*\ %=\ row:%l/%L\ (%03p%%)\             
"Colnr
set statusline+=%9*\ col:%03c\                            
" Top/bot
set statusline+=%0*\ %P\                      

hi User0 ctermbg=lightgreen ctermfg=black
hi User1 ctermbg=black ctermfg=white
hi User2 ctermbg=lightgreen ctermfg=black
hi User3 ctermbg=black ctermfg=lightblue
hi User4 ctermbg=black ctermfg=lightgreen
hi User5 ctermbg=black ctermfg=magenta
hi User6 ctermbg=black ctermfg=darkgreen
hi User7 ctermbg=black ctermfg=lightcyan
hi User8 ctermbg=black ctermfg=lightmagenta
hi User9 ctermbg=black ctermfg=lightred
