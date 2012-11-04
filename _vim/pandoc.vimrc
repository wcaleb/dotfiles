" Markdown Header and Format Bindings
nmap <leader>i bysw*
imap <leader>i <Esc>bysw*i
nmap <leader>1 yyp0v$r=
imap <leader>1 <Esc>yyp0v$r=A
nmap <leader>2 yyp0v$r-
imap <leader>2 <Esc>yyp0v$r-A
nmap <leader>3 0i###<Space><Esc>
imap <leader>3 <Esc>0i###<Space><Esc>A
nmap <leader>4 0i####<Space><Esc>
imap <leader>4 <Esc>0i####<Space><Esc>A
" Create in-line link with visually selected text and URL on system clipboard
vmap <leader>l di[<Esc>pi](<Esc>:call setreg("\"",system("pbpaste"))<CR>pa)<Esc>

" Pandoc Functions and Commands ------------------------------------------------

" Change regular pandoc footnotes to inline notes
" Hat-tip to @udioioca at http://vimgolf.com/challenges/5014b2156318a4000200000b
" nmap <leader>ln qn/[^<cr>*W"fd}d{N%ct]^[<C-R>f<Esc>gq{q

" Preview buffer in browser
" http://rtomayko.github.com/bcat/bcat.1.html#EXAMPLES
nmap <leader>pm :!pandoc -t html --smart --include-in-header=/Users/wcm1/.pandoc/marked.css % \|bcat<cr><cr>

function! PanPdf()
   exec ":! pandoc -o ~/Desktop/" . fnameescape(expand('%:t:r')) . ".pdf " . fnameescape(expand('%:p'))
endfunction

function! PanRtf()
   exec ":! pandoc -s -S -t rtf -o ~/Desktop/" . fnameescape(expand('%:t:r')) . ".rtf " . fnameescape(expand('%:p'))
endfunction

function! PanSyllabus()
   exec ":! pandoc -s -S --template=syllabus.tex -o ~/Desktop/" . fnameescape(expand('%:t:r')) . ".pdf " . fnameescape(expand('%:p'))
endfunction

function! PanDocx()
   exec ":! makebib;pandoc -s -S -t docx --reference-docx=/Users/wcm1/.pandoc/reference.docx --bibliography=/Users/wcm1/all.bib -o ~/Desktop/" . fnameescape(expand('%:t:r')) . ".docx " . fnameescape(expand('%:p'))
endfunction
