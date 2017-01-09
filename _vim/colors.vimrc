" Turn on pdc and muttrc syntax highlighting
au BufRead,BufNewFile *.txt set ft=pandoc	
au BufRead,BufNewFile *.pdc set ft=pandoc	
au BufRead,BufNewFile *.page set ft=pandoc
au BufRead,BufNewFile *.muttrc set ft=muttrc
syntax enable

" Turn off syntax highlighting for very long lines
set synmaxcol=200

" Solarized Color Scheme available at http://ethanschoonover.com/solarized
set background=light
colorscheme solarized


