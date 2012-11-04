" Copy selection to system clipboard, removing hardwraps with pandoc
vmap <silent> <C-c> "+y:let clip=getreg("+")<CR>:call setreg("+",system("pandoc -t plain --no-wrap",clip))<CR>
vmap <silent> <C-x> "+d:let clip=getreg("+")<CR>:call setreg("+",system("pandoc -t plain --no-wrap",clip))<CR>
nmap <silent> <C-p> :call setreg("\"",system("pbpaste"))<CR>p
imap <silent> <C-p> <Esc>:call setreg("\"",system("pbpaste"))<CR>pa
" vmap <silent> <C-c> y:call setreg("p",system("pandoc -t plain --no-wrap", getreg("\"")))<CR>:call system("pbcopy", getreg("p"))<CR>

" Function for pasting from Word processor documents
function! PasteWord()
	exe 'call setreg("\"",system("pbpaste"))'
	exe 'put'
	exe '%s//\r/g'
	exe '%s/[“”]/"/eg'
	exe "%s/[‘’]/'/eg"
	set nohlsearch
endfunction
