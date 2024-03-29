" Mix Autoformat and coc-format.
nmap <silent><expr> <Leader>= (&formatexpr =~ 'Coc') ? "<Plug>(coc-format)" : ":Autoformat<CR>"
xmap <silent><expr> <Leader>= (&formatexpr =~ 'Coc') ? "<Plug>(coc-format-selected)" : ":Autoformat<CR>"

" Bazel
let g:formatdef_custom_bzl='"buildifier --type=build"'
let g:formatters_bzl = ['custom_bzl']

" Proto
let g:formatdef_custom_proto='"buf format --disable-symlinks"'
let g:formatters_proto = ['custom_proto']
