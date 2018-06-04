let g:ctrlp_map = '<C-f>f'
nnoremap <silent> <C-f>b :CtrlPBuffer<CR>
nnoremap <silent> <C-f>l :CtrlPLine<cr>
nnoremap <silent> <C-f>t :CtrlPBufTag<CR>
nmap     <C-f>d :CtrlPDir <Left><Right>

" Make ctrlp faster
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
