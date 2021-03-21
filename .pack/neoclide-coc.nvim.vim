let g:coc_global_extensions=['coc-lists', 'coc-yank', 'coc-fzf-preview', 'coc-clangd', 'coc-json', 'coc-sh', 'coc-python', 'coc-tsserver', 'coc-eslint', 'coc-prettier', 'coc-styled-components', 'coc-react-refactor']
let g:my_filetypes_using_coc=['c', 'cc', 'cpp', 'objc', 'objcpp', 'json', 'jsonc', 'python', 'javascript', 'javascriptreact', 'typescript', 'typescriptreact']

" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Make <CR> auto-select the first completion item and notify coc.nvim to format on enter.
inoremap <silent><expr> <CR> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Config keymaps in w0rp/ale
"nmap <silent> <C-k> <Plug>(coc-diagnostic-prev)
"nmap <silent> <C-j> <Plug>(coc-diagnostic-next)
nmap <silent> <C-y> <Plug>(coc-fix-current)

" GoTo code navigation.
nmap <silent> <leader>tt <Plug>(coc-definition)
nmap <silent> <leader>tr <Plug>(coc-references)
nmap <silent> <leader>td <Plug>(coc-type-definition)
nmap <silent> <leader>ti <Plug>(coc-implementation)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocActionAsync('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <F2> <Plug>(coc-rename)

" coc-clangd
nnoremap <silent> <leader>th :CocCommand clangd.switchSourceHeader<CR>

" coc-fzf-preview
let g:fzf_preview_preview_key_bindings = 'ctrl-d:preview-half-page-down,ctrl-u:preview-half-page-up,?:toggle-preview'
