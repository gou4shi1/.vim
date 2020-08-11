" Mix Autoformat and CocFormat
nnoremap <silent> <Leader>= :<C-u>call MyFormatInNormalMode()<CR>
vnoremap <silent> <Leader>= :<C-u>call MyFormatInVisualMode()<CR>

function! MyFormatInNormalMode()
  if count(g:my_filetypes_using_coc, &filetype) > 0
    call CocActionAsync('format')
  else
    Autoformat
  endif
endfunction

function! MyFormatInVisualMode()
  if count(g:my_filetypes_using_coc, &filetype) > 0
    call CocActionAsync('formatSelected', visualmode())
  else
    Autoformat
  endif
endfunction

" Bazel
let g:formatdef_custom_bzl='"buildifier --type=build"'
let g:formatters_bzl = ['custom_bzl']
