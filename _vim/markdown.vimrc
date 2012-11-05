
" Markdown Header and Format Bindings

" nmap <leader>i bysw*
" imap <leader>i <Esc>bysw*i
nmap <leader>1 yyp0v$r=
imap <leader>1 <Esc>yyp0v$r=A
nmap <leader>2 yyp0v$r-
imap <leader>2 <Esc>yyp0v$r-A
nmap <leader>3 0i###<Space><Esc>
imap <leader>3 <Esc>0i###<Space><Esc>A
nmap <leader>4 0i####<Space><Esc>
imap <leader>4 <Esc>0i####<Space><Esc>A

" Create in-line link with visually selected text and URL on system clipboard
" Replicated by vim-pandoc plugin
" vmap <leader>l di[<Esc>pi](<Esc>:call setreg("\"",system("pbpaste"))<CR>pa)<Esc>

