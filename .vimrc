set relativenumber
set number
set colorcolumn=120
set nowrap
set nolinebreak
set foldenable
set foldmethod=syntax
set nocursorline
set nocompatible
set backspace=indent,eol,start
syntax on

au FileType tex setlocal nocursorline
au FileType tex :NoMatchParen

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"access to system clipboard
set clipboard=unnamed,unnamedplus 

" disable ugly hilight on code fold
highlight Folded ctermbg=None

" dont add fillchars to fold
set fillchars=fold:\ 

"use space for fold/unfold
nnoremap <Space> za

"force .md filetype to markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

"use nested folds for markdown
let g:markdown_fold_style = 'nested'
let g:markdown_folding = 1

"load previoius position
"au BufWinLeave *.md mkview
"au BufWinEnter *.md silent loadview

"command for jumping between sections in the document
function! SearchSection()
	/^#[^\#]
endfunction
command! Sec call SearchSection()

"map the leader key so its easy to hit
let mapleader = ","

"execute pathogen#infect()
"syntax on
"filetype plugin indent on

execute pathogen#infect()
syntax on
filetype plugin indent on
