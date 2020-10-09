" Toggle vista sidebar.
nnoremap <silent> <Leader><Leader>t :Vista!!<CR>

" Show the nearest method/function in the statusline.
function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

set statusline+=%{NearestMethodOrFunction()}

autocmd VimEnter * call vista#RunForNearestMethodOrFunction()

" Executive used when opening vista sidebar without specifying it.
" See all the avaliable executives via `:echo g:vista#executives`.
let g:vista_default_executive = 'coc'

"let g:vista_ctags_project_opts = '--fields=* --extras=* --all-kinds=*'

" Width of vista sidebar.
let g:vista_sidebar_width = 50

" Set this option to `1` to keep the alternate buffer when opening vista sidebar.
let g:vista_sidebar_keepalt = 1

" How each level is indented and what to prepend.
" This could make the display more compact or more spacious.
" e.g., more compact: ["▸ ", ""]
" Note: this option only works the LSP executives, doesn't work for `:Vista ctags`.
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]

"let g:vista_echo_cursor_strategy = 'both'

" To enable fzf's preview window, set g:vista_fzf_preview.
" The elements of g:vista_fzf_preview will be passed as arguments to fzf#vim#with_preview()
let g:vista_fzf_preview = ['right:50%']

" Press / in vista sidebar to open the vista finder.
autocmd FileType vista,vista_kind nnoremap <buffer> <silent> / :<C-u>call vista#finder#fzf#Run()<CR>
