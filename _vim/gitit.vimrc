" Commands for editing wiki pages to Gitit

command! -nargs=1 Wiki execute ":split " . fnameescape("$HOME/Dropbox/wikidata/<args>.page") | execute ":Gwrite"
