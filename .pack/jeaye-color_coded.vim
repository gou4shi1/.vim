" Disable color_coded in diff mode
if &diff
  let g:color_coded_enabled = 0
endif

" disable color_coded while inserting
" in case of delay
augroup color-coded
    autocmd!
    autocmd InsertEnter *.c,*.cpp,*.h,*.hpp silent! CCtoggle
    autocmd InsertLeave *.c,*.cpp,*.h,*.hpp silent! CCtoggle
augroup END

