" Mix Neoformat and coc-format.
nmap <silent><expr> <Leader>= (&formatexpr =~ 'Coc') ? "<Plug>(coc-format)" : ":Neoformat<CR>"
xmap <silent><expr> <Leader>= (&formatexpr =~ 'Coc') ? "<Plug>(coc-format-selected)" : ":Neoformat<CR>"

let g:neoformat_go_golines = {
            \ 'exe': 'golines',
            \ 'args': ['--base-formatter=gofumpt', '--no-reformat-tags'],
            \ 'stdin': 1,
            \ }

let g:neoformat_enabled_go = ['golines']
