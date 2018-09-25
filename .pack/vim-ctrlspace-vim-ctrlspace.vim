let g:CtrlSpaceDefaultMappingKey = "<C-s>"

" overwrite vim-unimpair's map
au FileType * nnoremap <silent> [b :CtrlSpaceGoUp<CR>
au FileType * nnoremap <silent> ]b :CtrlSpaceGoDown<CR>
