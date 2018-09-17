let g:LanguageClient_diagnosticsEnable = 0
let g:LanguageClient_selectionUI = 'quickfix'

let g:LanguageClient_serverCommands = {
    \ 'c': ['cquery', '--init={"cacheDirectory": "' . $HOME . '/.cache/cquery/"}'],
    \ 'cpp': ['cquery', '--init={"cacheDirectory": "' . $HOME . '/.cache/cquery/"}'],
    \ }

noremap <leader>td :call LanguageClient#textDocument_definition()<CR>
noremap <leader>gt :call LanguageClient#textDocument_hover()<CR>
noremap <leader>rr :call LanguageClient#textDocument_references()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
