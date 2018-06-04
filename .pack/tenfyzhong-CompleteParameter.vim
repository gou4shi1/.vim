" compatible with UltiSnips:
" must be loaded after UltiSnips
function! s:complete_parameter_keymap()
    inoremap <silent><expr> ( complete_parameter#pre_complete("()")

    smap <c-j> <Plug>(complete_parameter#goto_next_parameter)
    imap <c-j> <Plug>(complete_parameter#goto_next_parameter)
    smap <c-k> <Plug>(complete_parameter#goto_previous_parameter)
    imap <c-k> <Plug>(complete_parameter#goto_previous_parameter)
endfunction
augroup complete-parameter
    autocmd!
    autocmd VimEnter * exe "packadd CompleteParameter.vim"
    autocmd VimEnter * call s:complete_parameter_keymap()
augroup END

