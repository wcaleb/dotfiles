nmap <leader>ls :FufBuffer<cr>
nmap `S :FufFile $HOME/Scripts/<cr>
nmap `k :sp<cr>:FufFile $HOME/Dropbox/wikidata/<cr>
nmap `d :FufDir $HOME/Dropbox/<cr>
nmap `h :FufDir $HOME/<cr>
nmap `l :FufFile $HOME/Dropbox/lectures/<cr>
nmap `n :FufFile $HOME/Dropbox/notes/<cr>
nmap `p :FufFile $HOME/Dropbox/pubs/<cr>
nmap `r :FufFile $HOME/Dropbox/research/<cr>
nmap `s :FufFile $HOME/Students/<cr>
nmap `t :FufFile $HOME/.pandoc/templates/<cr>
nmap `w :FufFile $HOME/Dropbox/website/<cr>
nmap `y :FufFile $HOME/Dropbox/syllabi/<cr>
let g:fuf_file_exclude = '\v\~$|\.(DS_Store|o|exe|dll|bak|orig|swp|pdf|doc|docx)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])'
