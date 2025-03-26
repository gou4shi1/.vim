" makes EasyMotion work similarly to Vim's smartcase
let g:EasyMotion_smartcase = 1

" only map what you need (in case of confiltion)
let g:EasyMotion_do_mapping = 0

" search with 2 chars
nmap s <Plug>(easymotion-overwin-f2)
vmap s <Plug>(easymotion-f2)
omap s <Plug>(easymotion-f2)

" within line motion
map t <Plug>(easymotion-tl)
map T <Plug>(easymotion-Tl)
map f <Plug>(easymotion-fl)
map F <Plug>(easymotion-Fl)

" linewise motion
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
