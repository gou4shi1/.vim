" Mix Autoformat and CocFormat
nnoremap <silent> <Leader>= :<C-u>call MyFormatInNormalMode()<CR>
vnoremap <silent> <Leader>= :<C-u>call MyFormatInVisualMode()<CR>

function! MyFormatInNormalMode()
  if count(g:lsp_cxx_hl_ft_whitelist, &filetype) > 0
    call CocActionAsync('format')
  else
    Autoformat
  endif
endfunction

function! MyFormatInVisualMode()
  if count(g:lsp_cxx_hl_ft_whitelist, &filetype) > 0
    call CocActionAsync('formatSelected', visualmode())
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
