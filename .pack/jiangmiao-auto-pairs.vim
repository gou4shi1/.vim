let g:AutoPairs = {}
autocmd filetype c,cpp,javascript let b:AutoPairs = {'{':'}'}
autocmd filetype lisp,scheme,art let b:AutoPairs = {'(':')'}

" https://github.com/jiangmiao/auto-pairs/issues/74
let g:AutoPairsMultilineClose = 0
