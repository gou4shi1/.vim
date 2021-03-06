"let g:ycm_error_symbol                                  = '✖'
"let g:ycm_warning_symbol                                = '⚡'
"let g:ycm_global_ycm_extra_conf                         = '~/.vim/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf                            = 0
let g:ycm_complete_in_comments                          = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_seed_identifiers_with_syntax                  = 1
let g:ycm_auto_hover                                    = ''
let g:ycm_python_binary_path                            = 'python3'

" preview
"let g:ycm_autoclose_preview_window_after_insertion      = 1
set completeopt-=preview

" tags
let g:ycm_collect_identifiers_from_tags_files           = 1
"set tags+=~/.vim/tags/stdcpp.tags

nnoremap <Leader><Leader>y :YcmCompleter FixIt<CR>
nmap <Leader>h <plug>(YCMHover)
nnoremap <Leader>tt :YcmCompleter GoTo<CR>
