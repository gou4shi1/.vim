" Mix Autoformat and coc-format
nmap <silent> <expr> <Leader>= count(g:my_filetypes_using_coc, &filetype) ? "<Plug>(coc-format)" : ":Autoformat<CR>"
xmap <silent> <expr> <Leader>= count(g:my_filetypes_using_coc, &filetype) ? "<Plug>(coc-format-selected)" : ":Autoformat<CR>"

" Bazel
let g:formatdef_custom_bzl='"buildifier --type=build"'
let g:formatters_bzl = ['custom_bzl']
