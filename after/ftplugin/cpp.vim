func! CppCompile()
    let FLAG = "-D LOCAL -O2 -std=c++14 -Wall -Wno-unused-result -g"
    exe "AsyncRun g++ " . FLAG . " % -o %<"
endfunc
nnoremap <buffer> <F5> :call CppCompile()<CR>

func! CppRun()
    exe "term ./%<"
endfunc
nnoremap <buffer> <F6> :call CppRun()<CR>

packadd termdebug
func! CppDebug()
    exe "Termdebug ./%<"
endfunc
nnoremap <buffer> <F7> :call CppDebug()<CR>
