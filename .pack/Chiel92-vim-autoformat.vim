noremap <silent> <Leader>= :call MyFormat()<CR>

function! MyFormat()
  if count(g:lsp_cxx_hl_ft_whitelist, &filetype) > 0
    CocFormat
  else
    Autoformat
  endif
endfunction

" Bazel
let g:formatdef_custom_bzl='"buildifier --type=build"'
let g:formatters_bzl = ['custom_bzl']

" Javascript
let g:formatters_javascript = [
      \ 'prettier',
      \ 'eslint_local',
      \ 'jsbeautify_javascript',
      \ 'jscs',
      \ 'standard_javascript',
      \ 'xo_javascript',
      \ ]
