" Let scratch content persistent across sessions.
let g:scratch_persistence_file = expand("~/.vim/.scratch")

" Don't hide scratch buffer automatically when leaving insert-mode.
let g:scratch_insert_autohide = 0

" Disable the default key mappings.
let g:scratch_no_mappings = 1
nmap <leader>sc <plug>(scratch-insert-reuse)
nmap <leader>sC <plug>(scratch-insert-clear)
xmap <leader>sc <plug>(scratch-selection-reuse)
xmap <leader>sC <plug>(scratch-selection-clear)
