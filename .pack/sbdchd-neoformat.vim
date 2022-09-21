" Mix Neoformat and coc-format.
nmap <silent><expr> <Leader>= (&formatexpr =~ 'Coc') ? "<Plug>(coc-format)" : ":Neoformat<CR>"
xmap <silent><expr> <Leader>= (&formatexpr =~ 'Coc') ? "<Plug>(coc-format-selected)" : ":Neoformat<CR>"
