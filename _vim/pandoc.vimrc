" Turn off vim-pandoc section folding
let g:pandoc_no_folding = 1

" Preview buffer in browser after passing through pandoc
" http://rtomayko.github.com/bcat/bcat.1.html#EXAMPLES

nmap <leader>v :!pandoc -t html --smart --include-in-header=/Users/wcm1/.pandoc/marked.css % \|bcat<cr><cr>

" Convert buffer to html from markdown

nmap <leader>h :%!pandoc -f markdown -t html

" Command to call Pandoc and process working file, using functions below

command! -nargs=* Pan execute ":call Pan<args>()"
nmap <leader>p :Pan 

" Functions to pass file through pandoc

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

function! PanBib()
   exec ":! makebib;pandoc -s -S -t markdown --bibliography=/Users/wcm1/all.bib . fnameescape(expand('%:p'))"
endfunction

" Change regular pandoc footnotes to inline notes
" Hat-tip to @udioioca at http://vimgolf.com/challenges/5014b2156318a4000200000b
" nmap <leader>ln qn/[^<cr>*W"fd}d{N%ct]^[<C-R>f<Esc>gq{q

