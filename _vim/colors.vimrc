" Turn on pdc and muttrc syntax highlighting
au BufRead,BufNewFile *.txt set ft=markdown	
au BufRead,BufNewFile *.pdc set ft=markdown	
au BufRead,BufNewFile *.page set ft=markdown
au BufRead,BufNewFile *.muttrc set ft=muttrc
syntax enable

" Solarized Color Scheme available at http://ethanschoonover.com/solarized
set background=light
colorscheme solarized

