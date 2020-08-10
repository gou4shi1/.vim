let g:ale_linters = {
\   'c': [],
\   'cpp': [],
\   'python': ['pylint'],
\   'shell': ['shellcheck'],
\   'javascript': ['eslint'],
\   'json': ['jsonlint'],
\   'proto': ['protoc-gen-lint']
\}

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\}

"nmap <silent> <C-k> <Plug>(ale_previous_wrap)
"nmap <silent> <C-j> <Plug>(ale_next_wrap)
