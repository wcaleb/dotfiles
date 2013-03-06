" Commands for my personal bibtex system

command! -nargs=1 Bib :exe "split " . fnameescape("/Users/wcm1/Dropbox/bibs/<args>.bib")
command! -nargs=1 Bibs :Ack --text --smart-case "<args>" /Users/wcm1/Dropbox/bib/*

" A function that gets the year from a bib filename
" For use in my bib.snippets setup

function! FileYear()
	exe 'call Filename()'
	exe '.s/\(\w\+\)\(\d\{4\}\)/\2/g'
endfunction

