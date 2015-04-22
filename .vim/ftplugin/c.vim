map <F2> : call SyntaxCheckGcc()<CR>
func! SyntaxCheckGcc()
	exec "w"
	exec "!gcc -std=c99 -fsyntax-only -Wall % -o %<"
endfunc

map <F3> : call CompileGcc()<CR>
func! CompileGcc()
	exec "w"
	exec "!gcc -g -std=c99 % -o %<"
endfunc

map <F4> :call CompileRunGcc()<CR>
func! CompileRunGcc()
	exec "w"
	exec "!gcc -g -std=c99 % -o %<"
	exec "! ./%<"
endfunc

inoremap {<CR> {<CR><Backspace>}<Esc>O
