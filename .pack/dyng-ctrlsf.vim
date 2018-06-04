let g:ctrlsf_ackprg = 'rg'

nnoremap <C-f>w :CtrlSF ''<Left>
nmap     <C-f>n <Plug>CtrlSFCwordPath
nnoremap <C-f>o :CtrlSFToggle<CR>
