" Appearance
let g:Lf_StlColorscheme = 'solarized'
let g:Lf_PopupColorscheme = 'solarized'
let g:Lf_WindowPosition = 'popup'
let g:Lf_PopupPreviewPosition = 'top'
let g:Lf_StlSeparator = { 'left': '', 'right': '' }
let g:Lf_HideHelp = 1

" Behavior
let g:Lf_WorkingDirectoryMode = 'Ac'
let g:Lf_PreviewScrollStepSize = 10
let g:Lf_PreviewResult = {
      \ 'File': 0,
      \ 'Buffer': 0,
      \}

" Config keymaps in coc-fzf.
let g:Lf_ShortcutF = ''
let g:Lf_ShortcutB = ''
let g:Lf_CommandMap = {'<C-UP>': ['<C-u>'], '<C-DOWN>': ['<C-d>']}
