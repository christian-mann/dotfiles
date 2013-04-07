"inoremap { {}<Left>
"inoremap {<Backspace> <nop>
"inoremap {<CR> {<CR>}<Esc>O
"inoremap {{ {
"inoremap {} {}

"inoremap <expr> }  strpart(getline('.'), col('.')-1, 1) == "}" ? "\<Right>" : "}"

"imap }<CR> }<Esc>:call LatexEndTag()<CR>k=jo
function! LatexEndTag()
	s/\(\s*\)\(\\begin{\([^}]\+\)}\)$/\1\2\r\1\\end{\3}/e
endfunc
set spell
set linebreak
