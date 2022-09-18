" Toggle the vista sidebar.
" Also, the nearest function will be shown in the statusline.
nnoremap <silent> <Leader><Leader>t :Vista!!<CR>

let g:vista_ctags_executable = 'ctags'
let g:vista_ctags_project_opts = '--fields=* --extras=* --all-kinds=*'

let g:vista_sidebar_width = 50
let g:vista_sidebar_keepalt = 1
"let g:vista_echo_cursor_strategy = 'both'

" There is a major flaw about the tree renderer of ctags.
let g:vista#renderer#ctags = 'kind'

" How each level is indented and what to prepend.
" This could make the display more compact or more spacious.
" e.g., more compact: ["▸ ", ""]
" Note: This option only works for the kind renderer, not the tree renderer.
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]

" The elements of g:vista_fzf_preview will be passed as arguments to fzf#vim#with_preview()
let g:vista_fzf_preview = ['right:50%']

" Press / in the vista sidebar to open the vista finder.
autocmd FileType vista,vista_kind nnoremap <buffer><silent> / :<C-u>call vista#finder#fzf#Run()<CR>
