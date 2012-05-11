set nocompatible
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
filetype plugin on
let mapleader = ","

" Turn on Pandoc and muttrc syntax highlighting
au BufRead,BufNewFile *.txt set ft=pdc	
au BufRead,BufNewFile *.pdc set ft=pdc	
au BufRead,BufNewFile *.muttrc set ft=muttrc
syntax enable
" If using the pandoc.vim syntax file ...
" let g:pandoc_no_empty_implicits = 1
" let g:pandoc_no_spans = 1

" Trick Vim into ignoring matching brackets
let loaded_matchparen = 1

" Solarized Color Scheme available at http://ethanschoonover.com/solarized
set background=dark
colorscheme solarized

" Make editing vimrc easier
nmap <silent> <leader>ev :e $MYVIMRC<cr>
nmap <silent> <leader>sv :so $MYVIMRC<cr>

" Settings
set autoindent    		" always set autoindenting on 
set backspace=indent,eol,start 	" allow backspacing in insert mode
set backup
set backupdir=$HOME/tmp/vim/
" set copyindent    		" copy the previous indentation on autoindenting 
set directory=$HOME/tmp/vim/
set display=lastline
set formatoptions+=12
set hidden				" allow me to hide unsaved buffers
set history=1000        " remember more commands and search history
set nohlsearch     		" highlight search terms 
set ignorecase    		" ignore case when searching 
set incsearch     		" show search matches as you type
set lazyredraw			" don't redraw screen with macros
set linebreak
set noerrorbells        " don't beep  
set nolist
set number 				" always show line numbers 
set shiftround 			" use multiple of shiftwidth when indenting 
set shiftwidth=4  		" number of spaces to use for autoindenting 
set noshowmatch 			" set show matching parenthesis 
set smartcase     		" ignore case iff search pattern is all lowercase 
set smarttab 			" insert tabs on start of line acc. to shiftwidth
set suffixes=~,.aux,.bak,.bkp,.dvi,.hi,.o,.pdf,.gz,.log,.ps,.swp,.tar
set tabstop=4 			" a tab is four spaces 
set textwidth=0
set title				" show buffer title in Terminal window title
set undolevels=100     " use many muchos levels of undo
set visualbell          " don't beep
set wildmenu			" enhanced command-line completion
set wildignore+=*.log,*.doc,*.docx,*.pdf,*.swp,*.o,*.hi,*.py[co],*~
set wrap
set wrapmargin=0

"  Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo='10,\"100,:20,%,n~/.viminfo

" Make the command line two lines high and change the statusline display 
set cmdheight=2
set laststatus=2
set statusline=%F%m%r%h%w\ format=%{&ff}\ enc=%{&fenc}\ type=%Y
set showcmd
set showmode

" Macros
let @d='dwea pr,e'
" Key Bindings
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nmap <silent> ,/ :nohlsearch<CR>
nnoremap <leader>m :w<cr>	" easier save command 
nnoremap <Down> <C-F>
nnoremap <Up> <C-B>
nnoremap <leader><Down> <C-D>
nnoremap <leader><Up> <C-U>
vnoremap <Down> <C-F>
vnoremap <Up> <C-B>
vnoremap <leader><Down> <C-D>
vnoremap <leader><Up> <C-U>

" Expand directory of current file at command line
" http://vimcasts.org/episodes/the-edit-command/
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>ew :e %%
map <leader>es :sp %%

" Copy/paste to system clipboard
vmap <silent> <C-c> y:call system("pbcopy", getreg("\""))<CR>
vmap <silent> <C-x> d:call system("pbcopy", getreg("\""))<CR>
nmap <silent> <C-p> :call setreg("\"",system("pbpaste"))<CR>p
imap <silent> <C-p> <Esc>:call setreg("\"",system("pbpaste"))<CR>pa
" nmap <C-p> :set paste<cr>:r !pbpaste<cr>:set nopaste<cr>
" imap <C-p> <Esc>:set paste<cr>:r !pbpaste<cr>:set nopaste<cr>
" vmap <C-c> y:exe "!echo " . shellescape(getreg('0')) . "\| pbcopy"<cr><cr>
" vmap <C-x> d:exe "!echo " . shellescape(getreg('"')) . "\| pbcopy"<cr><cr>
" nmap <C-c> :.w !pbcopy<cr><cr>

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

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
" Straighten Quotes
nmap <leader>q :exe '%s/[“”]/"/eg'<cr>:exe "%s/[‘’]/'/eg"<cr>:nohlsearch<cr>
" Create in-line link with visually selected text and URL on system clipboard
vmap <leader>w di[<Esc>pi](<Esc>:call setreg("\"",system("pbpaste"))<CR>pa)<Esc>

" Pandoc Functions
function! PanPdf()
   exec ":! pandoc -o ~/Desktop/" . fnameescape(expand('%:t:r')) . ".pdf " . fnameescape(expand('%:p'))
endfunction

function! PanRtf()
   exec ":! pandoc -s -S -t rtf -o ~/Desktop/" . fnameescape(expand('%:t:r')) . ".rtf " . fnameescape(expand('%:p'))
endfunction

function! PanSyllabus()
   exec ":! pandoc -s -S --template=syllabus.tex -o ~/Desktop/" . fnameescape(expand('%:t:r')) . ".pdf " . fnameescape(expand('%:p'))
endfunction

function! PanLSU()
   exec ":! lsumake.sh " . fnameescape(expand('%:r'))
endfunction

" File Navigation
nmap `S :FufFile $HOME/Scripts/<cr>
nmap `b :FufFile $HOME/Dropbox/research/Book/booktxt/final/<cr>
nmap `d :FufDir $HOME/Dropbox/<cr>
nmap `h :FufDir $HOME/<cr>
nmap `l :FufFile $HOME/Dropbox/lectures/<cr>
nmap `n :FufFile $HOME/Dropbox/notes/<cr>
nmap `p :FufFile $HOME/Dropbox/pubs/<cr>
nmap `r :FufFile $HOME/Dropbox/research/<cr>
nmap `s :FufFile $HOME/Students/<cr>
nmap `t :FufFile $HOME/.pandoc/templates/<cr>
nmap `y :FufFile $HOME/Dropbox/syllabi/<cr>
let g:fuf_file_exclude = '\v\~$|\.(DS_Store|o|exe|dll|bak|orig|swp|pdf|doc|docx)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])'

" Command for my personal bibtex system
command! -nargs=1 Bib :exe "e! " . fnameescape("/Users/wcm1/Dropbox/pubs/bib/<args>.bib")

" Function for pasting from Word processor documents
function! PasteWord()
	exe 'call setreg("\"",system("pbpaste"))'
	exe 'put'
	exe '%s//\r/g'
	exe '%s/[“”]/"/eg'
	exe "%s/[‘’]/'/eg"
	set nohlsearch
endfunction
nmap <leader>w :call PasteWord()<cr>
imap <leader>w <Esc>:call PasteWord()<cr>a

" A function that gets the year from a bib filename
" For use in my bib.snippets setup
function! FileYear()
	exe 'call Filename()'
	exe '.s/\(\w\+\)\(\d\{4\}\)/\2/g'
endfunction

" Distraction free writing when using MacVim
if has("gui_running")
    exe ':WriterToggle'
endif

" Increment numbers
" from: http://rayninfo.co.uk/vimtips.html
" advanced incrementing (really useful)
" put following in _vimrc
" let g:I=0
" function! INC(increment)
"   let g:I =g:I + a:increment
"   return g:I
" endfunction
" usage
" :%g/pattern/s/$/\=INC(1)/g

" Abbreviations
"
iab dmd Dr. McDaniel<Esc>
