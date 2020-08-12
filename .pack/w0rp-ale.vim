let g:ale_linters = {
\   'shell': ['shellcheck'],
\   'proto': ['protoc-gen-lint']
\}

" Disable ale if using coc
for ft in g:my_filetypes_using_coc
  let g:ale_linters[ft] = []
endfor

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\}

"nmap <silent> <C-k> <Plug>(ale_previous_wrap)
"nmap <silent> <C-j> <Plug>(ale_next_wrap)
