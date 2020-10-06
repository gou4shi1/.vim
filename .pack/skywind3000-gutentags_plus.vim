" Disable the default keymaps.
let g:gutentags_plus_nomap = 1

" Get symbol (reference) under cursor.
noremap <silent> <leader>gs :GscopeFind s <C-R><C-W><cr>
" Get symbol definition under cursor.
noremap <silent> <leader>gg :GscopeFind g <C-R><C-W><cr>
" Get functions called by this function.
noremap <silent> <leader>gd :GscopeFind d <C-R><C-W><cr>
" Get functions calling this function.
noremap <silent> <leader>gc :GscopeFind c <C-R><C-W><cr>
" Get text string under cursor.
noremap <silent> <leader>gt :GscopeFind t <C-R><C-W><cr>
" Get egrep pattern under cursor.
noremap <silent> <leader>ge :GscopeFind e <C-R><C-W><cr>
" Get file name under cursor.
noremap <silent> <leader>gf :GscopeFind f <C-R>=expand("<cfile>")<cr><cr>
" Get files #including the file name under cursor.
noremap <silent> <leader>gi :GscopeFind i <C-R>=expand("<cfile>")<cr><cr>
" Get places where current symbol is assigned.
noremap <silent> <leader>ga :GscopeFind a <C-R><C-W><cr>
