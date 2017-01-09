"Open file in Marked.app
"Via http://jasonheppler.org/2012/10/16/opening-marked-in-vim.html
:nnoremap <leader>v :silent !open -a Marked\ 2.app '%:p'<cr>:redraw!<cr>

" Markdown Header and Format Bindings

" nmap <leader>i bysw*
" imap <leader>i <Esc>bysw*i
" nmap <leader>1 yyp0v$r=
" imap <leader>1 <Esc>yyp0v$r=A
" nmap <leader>2 yyp0v$r-
" imap <leader>2 <Esc>yyp0v$r-A
" nmap <leader>3 0i###<Space><Esc>
" imap <leader>3 <Esc>0i###<Space><Esc>A
" nmap <leader>4 0i####<Space><Esc>
" imap <leader>4 <Esc>0i####<Space><Esc>A

vmap <leader>lb :s/\n/  \r/<cr>

" Create in-line link with visually selected text and URL on system clipboard
" Replicated by vim-pandoc plugin
" vmap <leader>l di[<Esc>pi](<Esc>:call setreg("\"",system("pbpaste"))<CR>pa)<Esc>

