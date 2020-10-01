" add_list_source(name, description, command)
call coc_fzf#common#add_list_source('files', 'open files in cwd', 'Files')                                        " replace with fzf's Files
call coc_fzf#common#add_list_source('gfiles', 'open files in git project root', 'GFiles')                         " add fzf's GFiles
call coc_fzf#common#add_list_source('buffers', 'display open buffers', 'Buffers')                                 " replace with fzf's Buffers
call coc_fzf#common#add_list_source('gitactions', 'interactive git actions', 'CocCommand fzf-preview.GitActions') " add fzf-preview's GitActions
call coc_fzf#common#add_list_source('nmaps', 'key mappings in normal mode', 'Maps')                               " add fzf's Maps
call coc_fzf#common#add_list_source('imaps', 'key mappings in insert mode', 'call fzf#vim#maps("i", 0)')
call coc_fzf#common#add_list_source('xmaps', 'key mappings in visual mode', 'call fzf#vim#maps("x", 0)')

nnoremap <silent> <leader>ll :CocFzfList<CR>
nnoremap <silent> <leader>ld :CocFzfList diagnostics --current-buf<CR>
nnoremap <silent> <leader>lf :CocFzfList files<CR>
nnoremap <silent> <leader>la :CocFzfList gfiles<CR>
nnoremap <silent> <leader>lb :CocFzfList buffers<CR>
nnoremap <silent> <leader>lg :CocFzfList gitactions<CR>
