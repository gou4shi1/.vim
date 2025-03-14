let g:coc_global_extensions=['coc-lists', 'coc-yank', 'coc-snippets', 'coc-typos',
      \ 'coc-clangd', 'coc-json', 'coc-yaml', 'coc-sh', 'coc-pyright', 'coc-go', 'coc-sql', 'coc-vimlsp', 'coc-lua',
      \ 'coc-webview', 'coc-markdown-preview-enhanced', '@yaegassy/coc-marksman',
      \ 'coc-tsserver', 'coc-eslint', 'coc-prettier', 'coc-styled-components']

" format
let g:coc_trim_trailing_whitespace = 1
let g:coc_trim_final_newlines = 1
autocmd FileType c,cpp,javascript,javascriptreact,json,jsonc,nix,python,sql,typescript,typescriptreact,yaml,lua
      \ setl formatexpr=CocAction('formatSelected')

" completion
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr> <S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" snippet
command SnipFiles CocCommand snippets.openSnippetFiles
command SnipUser CocCommand snippets.editSnippets

" diagnostic
" Config keymaps in w0rp/ale
"nmap <silent> [d <Plug>(coc-diagnostic-prev)
"nmap <silent> ]d <Plug>(coc-diagnostic-next)
nmap <silent> <localleader>d <Plug>(coc-fix-current)

" code action
nmap <leader><leader>a <Plug>(coc-codeaction-cursor)
xmap <leader><leader>a <Plug>(coc-codeaction-selected)

" navigation
" <C-]> to jump to definition, <C-t> to jump back
set tagfunc=CocTagFunc
nmap <silent> <leader>tr <Plug>(coc-references)
nmap <silent> <leader>tu <Plug>(coc-references-used)
nmap <silent> <leader>tt <Plug>(coc-type-definition)
nmap <silent> <leader>ti <Plug>(coc-implementation)

" hover
function! ShowDocumentation() abort
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

nnoremap <silent> K :call ShowDocumentation()<CR>

autocmd CursorHold * silent call CocActionAsync('highlight')

" TODO: Find a way that only refresh statusline without cursor flashing.
" autocmd User CocStatusChange redrawstatus

" outline
function! ToggleOutline() abort
  let winid = coc#window#find('cocViewId', 'OUTLINE')
  if winid == -1
    call CocActionAsync('showOutline', 1)
  else
    call coc#window#close(winid)
  endif
endfunction

nnoremap <silent> <Leader><Leader>t :call ToggleOutline()<CR>

" range
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" rename
nmap <F2> <Plug>(coc-rename)

" coc-clangd
nnoremap <silent> <leader>th :CocCommand clangd.switchSourceHeader<CR>
nnoremap <silent> <leader>il :CocCommand document.toggleInlayHint<CR>

" coc-markdown-preview-enhanced
nnoremap <silent> <leader>md :CocCommand markdown-preview-enhanced.openPreview<CR>

" coc-typos
nmap [s <Plug>(coc-typos-prev)
nmap ]s <Plug>(coc-typos-next)
nmap z= <Plug>(coc-typos-fix)
