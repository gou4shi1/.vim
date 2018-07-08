" Depend on flugin SyntaxRange
function! SyntaxQuoteBlock()
    let l:file = readfile(expand("%:p"))
    let l:begin = 0
    let l:end = 0
    let l:cnt = 0
    for line in file
        let l:cnt += 1
        if strpart(line, 0, 3) != '```'
            continue
        endif
        if l:begin == 0
            let l:filetype = strpart(line, 3)
            let l:begin = l:cnt + 1
        else
            let l:end = l:cnt - 1
            if l:begin <= l:end
                exe l:begin.','.l:end.'SyntaxInclude '.l:filetype
            endif
            let l:begin = 0
        endif
    endfor
endfunction
autocmd BufWinEnter,bufwritepost *.md call SyntaxQuoteBlock()
