" Commands for my personal bibtex system

command! -nargs=1 Bib :exe "split " . fnameescape("$HOME/Dropbox/bibs/<args>.bib")
command! -nargs=1 Bibs :Ack --text --smart-case "<args>" $HOME/Dropbox/bib/*

" A function that gets the year from a bib filename
" For use in my bib.snippets setup

function! FileYear()
	exe 'call Filename()'
	exe '.s/\(\w\+\)\(\d\{4\}\)/\2/g'
endfunction

