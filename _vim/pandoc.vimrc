" Use pandoc to clean up with equalprg
" http://lincolnmullen.com/blog/cleanup-your-markdown-text-in-vim-with-equalprg/
set equalprg=pandoc\ -t\ markdown\ --reference-links\ --atx-headers\ --filter=inlinenotes.py
nnoremap <silent> <leader>= mpgg/\v^(\w\|\#)<CR>=G`p :let @/ = ""<CR>

" Turn off vim-pandoc section folding
" let g:pandoc_no_folding = 1
" let g:pandoc_folding = 1 

" Preview buffer in browser after passing through pandoc
" http://rtomayko.github.com/bcat/bcat.1.html#EXAMPLES

" nmap <leader>v :!pandoc -t html --smart --include-in-header=/Users/wcm1/.pandoc/marked.css % \|bcat<cr><cr>

au! BufRead,BufNewFile ~/Dropbox/lectures se cfu=SlideComplete()
fun! SlideComplete()
	
endfun


" Convert buffer to html from markdown

nmap <leader>h :%!pandoc -f markdown -t html
nmap <leader>b :%w !pandoc -f markdown -t html --standalone --include-in-header=/Users/wcm1/.pandoc/marked.css \| bcat<CR>
vmap <leader>b :w !pandoc -f markdown -t html --standalone --include-in-header=/Users/wcm1/.pandoc/marked.css \| bcat<CR>

" Commands for slideshows
command! -range=% -nargs=0 Slides execute ":<line1>,<line2>w !pandoc -t beamer -V theme:Pittsburgh -V fontsize:15pt --slide-level=1 -o ~/Desktop/slides.pdf" | execute ":<line1>,<line2>w !pandoc --template=slidenotes.tex --filter=/Users/wcm1/.pandoc/filters/norules.py -V fontsize=12pt -o ~/Desktop/slidenotes.pdf"
command! -nargs=1 Slide execute ":r !grep --ignore-case <args> $HOME/slides.txt"

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


