" Turn on Pandoc and muttrc syntax highlighting
au BufRead,BufNewFile *.txt set ft=pandoc	
au BufRead,BufNewFile *.pdc set ft=pandoc	
au BufRead,BufNewFile *.page set ft=pandoc
au BufRead,BufNewFile *.muttrc set ft=muttrc
syntax enable

" Solarized Color Scheme available at http://ethanschoonover.com/solarized
set background=light
colorscheme solarized

