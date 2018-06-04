" open quickfix window automatically at 8 lines height after command starts
let g:asyncrun_open = 8

" open the quickfix window when something adds to it
autocmd QuickFixCmdPost * call asyncrun#quickfix_toggle(8, 1)

" toggle the quickfix window
noremap <Leader><Leader>q :call asyncrun#quickfix_toggle(8)<CR>

" auto save all modified buffers before executing AsyncRun commands
let g:asyncrun_save = 1

" ring a bell after finished
"let g:asyncrun_bell = 1

" display progress in status line or airline
"let g:asyncrun_status = "stopped"
"let g:airline_section_error = airline#section#create_right(['%{g:asyncrun_status}'])

" If vim's 'encoding' is different with OS's encoding
" output in quickfix window which contains CJK characters may failed
" tell asyncrun the output of background command need to be convert to the same encoding as vim
"let g:asyncrun_encs = 'gbk'

" :Make (replaced for :make)
command! -bang -nargs=* -complete=file Make AsyncRun -program=make @ <args>

