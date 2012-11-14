" Commands for editing wiki pages to Gitit

command! -nargs=1 Wiki execute ":split $HOME/Dropbox/wikidata/" . fnameescape("<args>.page") | execute ":Gwrite"
