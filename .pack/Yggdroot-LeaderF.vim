let g:Lf_ShortcutF = '<C-f>p'
let g:Lf_ShortcutB = '<C-f>b'
noremap <C-f>u :LeaderfMru<CR>
noremap <C-f>f :LeaderfFunction!<CR>
noremap <C-f>t :LeaderfTag<CR>
noremap <C-f>l :LeaderfLine<CR>

let g:Lf_HideHelp = 1
let g:Lf_WindowHeight = 0.30
let g:Lf_StlColorscheme = 'powerline'
let g:Lf_StlSeparator = { 'left': '', 'right': '' }

let g:Lf_WorkingDirectoryMode = 'Ac'
let g:Lf_CacheDirectory = expand('~/.vim/cache')
let g:Lf_PreviewResult = { 'Function': 0 }
