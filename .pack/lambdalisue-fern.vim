" Mimic vim-dirvish.
nnoremap - :<C-u>Fern %:h -reveal=%:p<CR>
" Mimic nerdtree.
nnoremap <Leader><Leader>f :<C-u>Fern . -reveal=% -drawer<CR>

function! s:init_fern() abort
  nmap <silent><buffer> - <Plug>(fern-action-leave)
  nmap <silent><buffer> + <Plug>(fern-action-mark:toggle)
  xmap <silent><buffer> + <Plug>(fern-action-mark:toggle)

  nmap <silent><buffer> p     <Plug>(fern-action-preview:toggle)
  nmap <silent><buffer> <C-p> <Plug>(fern-action-preview:auto:toggle)
  nmap <silent><buffer> <C-d> <Plug>(fern-action-preview:scroll:down:half)
  nmap <silent><buffer> <C-u> <Plug>(fern-action-preview:scroll:up:half)
endfunction

augroup fern-custom
  autocmd! *
  autocmd FileType fern call s:init_fern()
augroup END
