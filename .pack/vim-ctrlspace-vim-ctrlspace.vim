let g:CtrlSpaceDefaultMappingKey = "<C-s>"

if executable("ag")
    let g:CtrlSpaceGlobCommand = 'ag -l --nocolor -g ""'
endif

" this save about 10ms init time
let g:CtrlSpaceFileEngine = "~/.vim/pack/z_last_load/start/vim-ctrlspace/bin/file_engine_linux_amd64"

" overwrite vim-unimpair's map
"au FileType * nnoremap <silent> [b :CtrlSpaceGoUp<CR>
"au FileType * nnoremap <silent> ]b :CtrlSpaceGoDown<CR>
