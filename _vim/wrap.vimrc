" set textwidth=72
" set formatoptions=tq
set formatoptions+=12
set textwidth=0
set linebreak
set wrap
set wrapmargin=0
set display=lastline

" toggle automatic hardwrapping 
nmap <silent> <leader>wa :set fo-=a<CR> 
nmap <silent> <leader>aw :set fo+=a<CR>

" remove line breaks within paragraphs (softwrap)
" http://superuser.com/questions/200423/join-lines-inside-paragraphs-in-vim
nmap <silent> <leader>sw Go<Esc>:3,$g/^./ .,/^$/-1 join<CR>

" Straighten Quotes
nmap <leader>q :exe '%s/[“”]/"/eg'<cr>:exe "%s/[‘’]/'/eg"<cr>:nohlsearch<cr>

set autoindent    		" always set autoindenting on 
set backspace=indent,eol,start 	" allow backspacing in insert mode
set backup
set backupdir=$HOME/tmp/vim/
" set copyindent    		" copy the previous indentation on autoindenting 
set directory=$HOME/tmp/vim/
set hidden				" allow me to hide unsaved buffers
set history=1000        " remember more commands and search history
set nohlsearch     		" highlight search terms 
set ignorecase    		" ignore case when searching 
set incsearch     		" show search matches as you type
set lazyredraw			" don't redraw screen with macros
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
set title				" show buffer title in Terminal window title
set undolevels=100     " use many muchos levels of undo
set visualbell          " don't beep
set wildmenu			" enhanced command-line completion
set wildignore+=*.log,*.doc,*.docx,*.pdf,*.swp,*.o,*.hi,*.py[co],*~

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

" Bindings -------------------------------------------------------------

nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap <Down> <C-F>
nnoremap <Up> <C-B>
nnoremap <leader><Down> <C-D>
nnoremap <leader><Up> <C-U>
vnoremap <Down> <C-F>
vnoremap <Up> <C-B>
vnoremap <leader><Down> <C-D>
vnoremap <leader><Up> <C-U>

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-z> <C-w>c
nnoremap <C-c> <C-w>c
nnoremap <C-o> <C-w>o
nnoremap <C-n> :cnext<cr>
nnoremap <C-b> :cprev<cr>
nnoremap <C-z> :cclose<cr>
