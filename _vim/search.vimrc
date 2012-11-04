" Get Spotlight results in a Clam buffer
command! -nargs=* Spot execute ":Clam mdfind -onlyin /Users/wcm1/ kind:text <args> | grep -E '\.(txt|bib|page)$'" | execute "redraw!"
nnoremap <leader>/ :Spot 
" Map ,ye to yank line in results and edit file in a new split
nnoremap <leader>ye 0y$:exe "split " . fnameescape(getreg("\""))<cr>
