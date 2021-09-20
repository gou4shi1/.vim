"* mark current buffer
"* current window is the only window in current tabpage?
"  true  => is there only one tabpage?
"           true  => are there any other active buffers?
"                    true  => switch to most recently used active buffer
"                    false => Is g:sayonara_confirm_quit set?
"                             true  => confirm whether to quit Vim
"                             false => quit Vim
"           false => close tabpage
"  false => close window
"* delete marked buffer unless it is shown in any other window
"cabbrev q <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'Sayonara' : 'q')<CR>
command Q Sayonara
"* mark current buffer
"* are there any other active buffers?
"  true  => switch to most recently used active buffer
"  false => create an empty scratch buffer
"* delete marked buffer unless it is shown in any other window
nnoremap <Leader>q :Sayonara!<CR>
