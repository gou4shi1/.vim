func! CCompile()
    let FLAG = "-g" 
    exe "AsyncRun gcc " . FLAG . " % -o %<"
endfunc
nnoremap <buffer> <F5> :call CCompile()<CR>

func! CRun()
    exe "term ./%<"
endfunc
nnoremap <buffer> <F6> :call CRun()<CR>

packadd termdebug
func! CDebug()
    exe "Termdebug ./%<"
endfunc
nnoremap <buffer> <F7> :call CDebug()<CR>
