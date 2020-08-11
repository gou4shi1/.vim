let g:coc_global_extensions=['coc-clangd', 'coc-lists', 'coc-python', 'coc-tsserver', 'coc-eslint', 'coc-prettier', 'coc-styled-components', 'coc-react-refactor']
let g:my_filetypes_using_coc=['c', 'cc', 'cpp', 'objc', 'objcpp', 'python', 'javascript', 'javascriptreact', 'typescript', 'typescriptreact']

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> <C-k> <Plug>(coc-diagnostic-prev)
nmap <silent> <C-j> <Plug>(coc-diagnostic-next)
nmap <silent> <C-y> <Plug>(coc-fix-current)

" GoTo code navigation.
nmap <silent> <leader>tt <Plug>(coc-definition)
nmap <silent> <leader>tr <Plug>(coc-references)
nmap <silent> <leader>td <Plug>(coc-type-definition)
nmap <silent> <leader>ti <Plug>(coc-implementation)
nnoremap <silent> <leader>th :CocCommand clangd.switchSourceHeader<CR>

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <F2> <Plug>(coc-rename)

" coc-lists
nnoremap <silent> <leader>l :CocList<CR>
nnoremap <silent> <leader>lf :CocList files<CR>
nnoremap <silent> <leader>lb :CocList buffers<CR>
