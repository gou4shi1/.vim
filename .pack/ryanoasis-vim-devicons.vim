" NERDTree
let g:DevIconsEnableFoldersOpenClose = 1
let g:WebDevIconsNerdTreeBeforeGlyphPadding = ""
let NERDTreeDirArrowExpandable = " "
let NERDTreeDirArrowCollapsible = " "

" Airline
let g:webdevicons_enable_airline_tabline = 0
let g:webdevicons_enable_airline_statusline = 0

" temporarily fix https://github.com/ryanoasis/vim-devicons/issues/133
if has("gui_running")
  let g:WebDevIconsNerdTreeAfterGlyphPadding = ""

  augroup custom_nerdtree_options
    autocmd!
    autocmd FileType,WinEnter * :call <SID>SetNerdTreeOptions()
  augroup END

  function! s:SetNerdTreeOptions() abort
    if &l:filetype ==# 'nerdtree'
      let g:default_ambiwidth = &ambiwidth
      setlocal ambiwidth=double
    else
      if exists('g:default_ambiwidth')
        let &ambiwidth = g:default_ambiwidth
        unlet g:default_ambiwidth
      endif
    endif
  endfunction
endif
