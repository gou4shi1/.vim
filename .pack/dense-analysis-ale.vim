let g:ale_floating_preview = 1
let g:ale_floating_window_border = ['│', '─', '╭', '╮', '╯', '╰', '│', '─']
let g:ale_virtualtext_cursor = 0

let g:ale_linters_explicit = 1
let g:ale_linters = {
\   'proto': ['buf-lint'],
\}

let g:ale_proto_buf_lint_options = '--disable-symlinks'

" Mix ale and coc.
nmap <silent><expr> <C-k> has_key(g:ale_linters, &filetype) ? "<Plug>(ale_previous_wrap)<Plug>(ale_detail)" : "<Plug>(coc-diagnostic-prev)"
nmap <silent><expr> <C-j> has_key(g:ale_linters, &filetype) ? "<Plug>(ale_next_wrap)<Plug>(ale_detail)" : "<Plug>(coc-diagnostic-next)"
