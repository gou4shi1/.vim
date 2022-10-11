" disable the default keymaps
let g:conflict_marker_enable_mappings = 0

" only map keys for conflicted files
let g:conflict_marker_hooks = {}
function! g:conflict_marker_hooks.on_detected()
  " jump to the next/prev <<<<<
  nmap <buffer> [< <Plug>(conflict-marker-prev-hunk)
  nmap <buffer> [> <Plug>(conflict-marker-prev-hunk)
  nmap <buffer> ]< <Plug>(conflict-marker-next-hunk)
  nmap <buffer> ]> <Plug>(conflict-marker-next-hunk)
  " choose them/our/none/both
  nmap <buffer> ct <Plug>(conflict-marker-themselves)
  nmap <buffer> co <Plug>(conflict-marker-ourselves)
  nmap <buffer> cn <Plug>(conflict-marker-none)
  nmap <buffer> cb <Plug>(conflict-marker-both)
  nmap <buffer> cB <Plug>(conflict-marker-both-rev)
endfunction
