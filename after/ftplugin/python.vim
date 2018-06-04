" set makeprg and errorformat
" ~/.vim/compiler/python3.vim
compiler python3

" In fact, it will also run, but run with quickfix.
func! PyCompile()
    exe "w"
    exe "make"
endfunc
nnoremap <buffer> <F5> :call PyCompile()<CR>

func! PyRun()
    exe "term python3 %"
endfunc
nnoremap <buffer> <F6> :call PyRun()<CR>

func! PyDebug()
endfunc
nnoremap <buffer> <F7> :call PyDebug()<CR>
