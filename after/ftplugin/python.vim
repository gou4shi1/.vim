" set makeprg and errorformat
" ~/.vim/compiler/ (issued)

func! PyCompile()
    compiler pyunit
    setlocal makeprg=python3\ %
    exe "w"
    exe "make"
endfunc
nnoremap <buffer> <F5> :call PyCompile()<CR>

func! PyRun()
    exe "TREPLSendFile"
endfunc
nnoremap <buffer> <F6> :call PyRun()<CR>

func! PyDebug()
endfunc
nnoremap <buffer> <F7> :call PyDebug()<CR>
