set nocompatible
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
filetype plugin on
let mapleader = ","
let maplocalleader = ","
runtime ftplugin/man.vim

" Trick Vim into ignoring matching brackets
let loaded_matchparen = 1

" Expand directory of current file at command line
" http://vimcasts.org/episodes/the-edit-command/
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>ew :e %%
map <leader>es :sp %%

" Easy way to save file
nmap <leader>m :w<cr>

" Source/edit configuration files
nmap <leader>ev :e $HOME/.vim/<cr>
source $HOME/.vim/abbrev.vimrc
source $HOME/.vim/bibtex.vimrc
source $HOME/.vim/clipboard.vimrc
source $HOME/.vim/colors.vimrc
source $HOME/.vim/fuf.vimrc
source $HOME/.vim/gitit.vimrc
source $HOME/.vim/pandoc.vimrc
source $HOME/.vim/search.vimrc
source $HOME/.vim/wrap.vimrc

