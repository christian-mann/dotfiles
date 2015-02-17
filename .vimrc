execute pathogen#infect()
execute pathogen#helptags()
filetype on
filetype plugin indent on

syntax on
set nocompatible
set autoindent
set copyindent
set nohls
set undofile
set mouse=a

set tabstop=4
set shiftwidth=4
set shiftround
set ignorecase
set smartcase

"Use Ctrl-J and Ctrl-K to move between windows
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l

" Make Y behave like C, D
nnoremap Y y$

" Make pressing down/up work nicely on long lines
nnoremap j gj
nnoremap k gk
" Restore ability to scroll line at a time
nnoremap gj j
nnoremap gk k

" allow ; as a replacement for : (no shift key!)
nnoremap ; :
vnoremap ; :

" reset timeout because wtf vim
" edit: Don't do this if you want to use multiple characters
" in remaps. It is intended to fix a problem with the <Esc>O sequence.
"set timeoutlen=1

" control-backspace for delete word
imap <C-BS> <C-W>

"w!! for sudo write
ca w!! w !sudo tee % > /dev/null 

" Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo='10,\"100,:20,%,n~/.viminfo

function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END

function! NumberToggle()
	if(&relativenumber == 1)
		set norelativenumber
		set number
	else
		set nonumber
		set relativenumber
	endif
endfunc
nnoremap <C-n> :call NumberToggle()<CR>
set number

" disable bell
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

nnoremap <F2> :call TestFunctionPleaseIgnore()<CR>
nnoremap <F5> :redraw!<CR>

" tags
set tags=./tags;/

map <leader>u <Esc>yypVr=

" latex-suite
"set grepprg=grep\ -nH\ $*
"let g:tex_flavor='latex'
"
inoremap <C-E> <C-O>$
inoremap <C-A> <C-O>^
