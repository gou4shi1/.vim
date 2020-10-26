let g:submode_timeoutlen = 1000

" resize window
call submode#enter_with('re-win-v', 'n', '', '<C-w><', '<C-w><')
call submode#enter_with('re-win-v', 'n', '', '<C-w>>', '<C-w>>')
call submode#map('re-win-v', 'n', '', '<', '<C-w><')
call submode#map('re-win-v', 'n', '', '>', '<C-w>>')
call submode#enter_with('re-win-h', 'n', '', '<C-w>-', '<C-w>-')
call submode#enter_with('re-win-h', 'n', '', '<C-w>+', '<C-w>+')
call submode#map('re-win-h', 'n', '', '-', '<C-w>-')
call submode#map('re-win-h', 'n', '', '+', '<C-w>+')
