" Commands for editing wiki pages in Gitit

command! -nargs=1 Wiki execute ":split $HOME/Dropbox/wikidata/" . fnameescape("<args>.page") | execute ":Gwrite"

nnoremap <leader>{ :vimgrep /TODO:/ /Users/wcm1/Dropbox/wikidata/*.page<CR>:copen<CR>

command! -nargs=1 Wgrep vimgrep "<args>" /Users/wcm1/Dropbox/wikidata/*.page
nnoremap <leader>[ :Wgrep
