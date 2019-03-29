call submode#enter_with('resize-window', 'n', '', '<C-w><', '<C-w><')
call submode#enter_with('resize-window', 'n', '', '<C-w>>', '<C-w>>')
call submode#map('resize-window', 'n', '', '<', '<C-w><')
call submode#map('resize-window', 'n', '', '>', '<C-w>>')
