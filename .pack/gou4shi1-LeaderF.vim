let g:Lf_StlColorscheme = 'solarized'
let g:Lf_PopupColorscheme = 'solarized'

let g:Lf_CacheDirectory = expand('~/.vim')
let g:Lf_WorkingDirectoryMode = 'Ac'

let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
" let g:Lf_PopupPreviewPosition = 'right'
let g:Lf_PopupShowBorder = 1
let g:Lf_PopupBorders = ["─","│","─","│","╭","╮","╯","╰"]
let g:Lf_StlSeparator = { 'left': '', 'right': '' }
let g:Lf_HideHelp = 1
let g:Lf_PreviewResult = {
      \ 'Tag': 1,
      \ 'BufTag': 1,
      \ 'Function': 1,
      \ 'Line': 1,
      \ 'Rg': 1,
      \ 'QuickFix': 1,
      \}

" Config keymaps in coc-fzf
let g:Lf_ShortcutF = ''
let g:Lf_ShortcutB = ''
let g:Lf_CommandMap = {'<C-UP>': ['<C-u>'], '<C-DOWN>': ['<C-d>']}
