let g:coc_fzf_location_delay = 10

" add_list_source(name, description, command)
call coc_fzf#common#add_list_source('files', 'open files in cwd', 'call timer_start(10, {->execute("Leaderf file .")})')                 " LeaderF
call coc_fzf#common#add_list_source('pfiles', 'open files in project', 'call timer_start(10, {->execute("Leaderf file")})')              " LeaderF
call coc_fzf#common#add_list_source('buffers', 'display open buffers', 'call timer_start(10, {->execute("Leaderf buffer")})')            " LeaderF
call coc_fzf#common#add_list_source('mru', 'most recently used files in cwd', 'call timer_start(10, {->execute("Leaderf mru --cwd")})')  " LeaderF
call coc_fzf#common#add_list_source('lines', 'lines in current buffer', 'call timer_start(10, {->execute("Leaderf line --nowrap")})')    " LeaderF
call coc_fzf#common#add_list_source('quickfix', 'quickfix list', 'call timer_start(10, {->execute("Leaderf quickfix")})')                " LeaderF
call coc_fzf#common#add_list_source('locationlist', 'location list', 'call timer_start(10, {->execute("Leaderf loclist")})')             " LeaderF
call coc_fzf#common#add_list_source('helptags', 'helptags of vim', 'call timer_start(10, {->execute("Leaderf help")})')                  " LeaderF
call coc_fzf#common#add_list_source('functions', 'functions in current buffer', 'call timer_start(10, {->execute("Leaderf function")})') " LeaderF
call coc_fzf#common#add_list_source('cmdhistory', 'history of vim commands', 'History:')                                                 " fzf
call coc_fzf#common#add_list_source('searchhistory', 'search history', 'History/')                                                       " fzf
call coc_fzf#common#add_list_source('vimcommands', 'vim commands list', 'Commands')                                                      " fzf
call coc_fzf#common#add_list_source('nmaps', 'key mappings in normal mode', 'Maps')                                                      " fzf
call coc_fzf#common#add_list_source('imaps', 'key mappings in insert mode', 'call fzf#vim#maps("i", 0)')                                 " fzf
call coc_fzf#common#add_list_source('xmaps', 'key mappings in visual mode', 'call fzf#vim#maps("x", 0)')                                 " fzf
call coc_fzf#common#add_list_source('gitactions', 'interactive git actions', 'CocCommand fzf-preview.GitActions')                        " fzf-preview

map <silent> <C-f> :CocFzfList<CR>
nnoremap <silent> <C-f>f :CocFzfList files<CR>
nnoremap <silent> <C-f>p :CocFzfList pfiles<CR>
nnoremap <silent> <C-f>b :CocFzfList buffers<CR>
nnoremap <silent> <C-f>m :CocFzfList mru<CR>
nnoremap <silent> <C-f>l :CocFzfList lines<CR>
nnoremap <silent> <C-f>d :CocFzfList diagnostics --current-buf<CR>
nnoremap <silent> <C-f>q :CocFzfList quickfix<CR>
nnoremap <silent> <C-f>h :CocFzfList helptags<CR>
nnoremap <silent> <C-f>u :CocFzfList functions<CR>
nnoremap <silent> <C-f>t :CocFzfList outline<CR>
nnoremap <silent> <C-f>s :CocFzfList symbols<CR>
nnoremap <silent> <C-f>y :CocFzfList yank<CR>
nnoremap <silent> <C-f>: :CocFzfList cmdhistory<CR>
nnoremap <silent> <C-f>/ :CocFzfList searchhistory<CR>
nnoremap <silent> <C-f>c :CocFzfList vimcommands<CR>
nnoremap <silent> <C-f>g :CocFzfList gitactions<CR>
