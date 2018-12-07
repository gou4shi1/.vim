" set makeprg and errorformat
" ~/.vim/compiler/ (issued)
let s:py = "python3"

func! PyCompile()
    compiler pyunit
    setlocal makeprg=python3\ %
    exe "w"
    exe "make"
endfunc
nnoremap <buffer> <F5> :call PyCompile()<CR>

func! PyRun()
    exe "term ".s:py." %"
endfunc
nnoremap <buffer> <F6> :call PyRun()<CR>

func! PyDebug()
endfunc
nnoremap <buffer> <F7> :call PyDebug()<CR>
