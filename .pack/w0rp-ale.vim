let g:ale_linters_explicit = 1

let g:ale_linters = {
\   'sh': ['shellcheck'],
\   'proto': ['buf-lint']
\}

" Disable ale if using coc
"for ft in g:my_filetypes_using_coc
"  let g:ale_linters[ft] = []
"endfor

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\}

" Mix ale and coc
nmap <silent> <expr> <C-k> count(g:my_filetypes_using_coc, &filetype) ? "<Plug>(coc-diagnostic-prev)" : "<Plug>(ale_previous_wrap)"
nmap <silent> <expr> <C-j> count(g:my_filetypes_using_coc, &filetype) ? "<Plug>(coc-diagnostic-next)" : "<Plug>(ale_next_wrap)"
