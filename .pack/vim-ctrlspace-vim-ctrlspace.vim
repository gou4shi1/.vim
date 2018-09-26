let g:CtrlSpaceDefaultMappingKey = "<C-s>"

if executable("ag")
    let g:CtrlSpaceGlobCommand = 'ag -l --nocolor -g ""'
endif

" overwrite vim-unimpair's map
au FileType * nnoremap <silent> [b :CtrlSpaceGoUp<CR>
au FileType * nnoremap <silent> ]b :CtrlSpaceGoDown<CR>
