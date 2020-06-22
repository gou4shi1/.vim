noremap <Leader>= :Autoformat<CR>

" Bazel
let b:formatdef_custom_bzl='"buildifier --type=build"'
let b:formatters_bzl = ['custom_bzl']

" Javascript
let g:formatters_javascript = [
      \ 'prettier',
      \ 'eslint_local',
      \ 'jsbeautify_javascript',
      \ 'jscs',
      \ 'standard_javascript',
      \ 'xo_javascript',
      \ ]
