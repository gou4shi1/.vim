" add_list_source(name, description, command)
call coc_fzf#common#add_list_source('files', 'open files in cwd', 'Leaderf file .')                               " replace with LeaderF's file .
call coc_fzf#common#add_list_source('pfiles', 'open files in project', 'Leaderf file')                            " add LeaderF's file
call coc_fzf#common#add_list_source('buffers', 'display open buffers', 'Leaderf buffer')                          " replace with LeaderF's buffer
call coc_fzf#common#add_list_source('mru', 'most recently used files in cwd', 'Leaderf mru --cwd')                " replace with LeaderF's mru
call coc_fzf#common#add_list_source('lines', 'lines in current buffer', 'Leaderf line --nowrap')                  " replace with LeaderF's line
call coc_fzf#common#add_list_source('functions', 'functions in current buffer', 'Leaderf function')               " add LeaderF's function
call coc_fzf#common#add_list_source('quickfix', 'quickfix list', 'Leaderf quickfix')                              " replace with LeaderF's quickfix
call coc_fzf#common#add_list_source('locationlist', 'location list', 'Leaderf loclist')                           " replace with LeaderF's loclist
call coc_fzf#common#add_list_source('helptags', 'helptags of vim', 'Leaderf help')                                " replace with LeaderF's help
call coc_fzf#common#add_list_source('tags', 'tags from vista', 'Vista finder')                                    " replace with vista's finder
call coc_fzf#common#add_list_source('cmdhistory', 'history of vim commands', 'History:')                          " replace with fzf's History:
call coc_fzf#common#add_list_source('searchhistory', 'search history', 'History/')                                " replace with fzf's History/
call coc_fzf#common#add_list_source('vimcommands', 'vim command list', 'Commands')                                " replace with fzf's Commands
call coc_fzf#common#add_list_source('gitactions', 'interactive git actions', 'CocCommand fzf-preview.GitActions') " add fzf-preview's GitActions
call coc_fzf#common#add_list_source('nmaps', 'key mappings in normal mode', 'Maps')                               " add fzf's Maps
call coc_fzf#common#add_list_source('imaps', 'key mappings in insert mode', 'call fzf#vim#maps("i", 0)')
call coc_fzf#common#add_list_source('xmaps', 'key mappings in visual mode', 'call fzf#vim#maps("x", 0)')

map <silent> <C-f> :CocFzfList<CR>
nnoremap <silent> <C-f>p :CocFzfList pfiles<CR>
nnoremap <silent> <C-f>f :CocFzfList files<CR>
nnoremap <silent> <C-f>b :CocFzfList buffers<CR>
nnoremap <silent> <C-f>l :CocFzfList lines<CR>
nnoremap <silent> <C-f>u :CocFzfList functions<CR>
nnoremap <silent> <C-f>q :CocFzfList quickfix<CR>
nnoremap <silent> <C-f>m :CocFzfList mru<CR>
nnoremap <silent> <C-f>h :CocFzfList helptags<CR>
nnoremap <silent> <C-f>t :CocFzfList tags<CR>
nnoremap <silent> <C-f>: :CocFzfList cmdhistory<CR>
nnoremap <silent> <C-f>/ :CocFzfList searchhistory<CR>
nnoremap <silent> <C-f>c :CocFzfList vimcommands<CR>
nnoremap <silent> <C-f>g :CocFzfList gitactions<CR>
nnoremap <silent> <C-f>d :CocFzfList diagnostics --current-buf<CR>
