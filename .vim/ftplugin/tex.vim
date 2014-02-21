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

map <F2> : call SyntaxCheck()<CR>
func! SyntaxCheck()
	exec "w"
	exec "!pdflatex -draftmode \"%\""
endfunc

map <F3> : call Compile()<CR>
func! Compile()
	exec "w"
	exec "!latexmk -pdf"
endfunc

map <F4> :call CompileView()<CR>
func! CompileView()
	" Assumes that the output pdf is the only one in the directory
	exec "w"
	exec "!latexmk -pdf; evince `basename % .tex`.pdf &>/dev/null &"
endfunc

iab tlg topology
iab tlgs topologies
iab tlgl topological

iab wlog without loss of generality
iab WLOG Without loss of generality
