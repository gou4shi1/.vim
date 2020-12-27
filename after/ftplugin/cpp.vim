func! CppCompile()
    let FLAG = "-D LOCAL -std=c++14 -Wall -g"
    exe "AsyncRun g++ " . FLAG . " % -o %<"
endfunc
nnoremap <buffer> <F5> :call CppCompile()<CR>

func! CppRun()
    let filename = expand("%<")
    exe "T ./" . filename
endfunc
nnoremap <buffer> <F6> :call CppRun()<CR>

packadd termdebug
func! CppDebug()
    exe "Termdebug ./%<"
endfunc
nnoremap <buffer> <F7> :call CppDebug()<CR>
