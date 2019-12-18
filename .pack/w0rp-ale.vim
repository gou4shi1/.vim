let g:ale_linters = {
\   'c': [],
\   'cpp': [],
\   'python': ['flake8'],
\   'shell': ['shellcheck'],
\   'javascript': ['eslint'],
\   'json': ['jsonlint'],
\   'proto': ['protoc-gen-lint']
\}

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\}

" 快速跳转到前/后一个出错处
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
