" font (need to be installed on your system additionaly)
set guifont=Monospace\ 13

" disable cursor blink on normal mode
set guicursor+=n-v-c:blinkon0
"let &guicursor = substitute(&guicursor, 'n-v-c:', '&blinkon0-', '')

" hide all GUI elements
set guioptions=

" use wmctrl to fullscreen (need to be installed on your system additionaly)
fun! ToggleFullscreen()
    call system("wmctrl -ir " . v:windowid . " -b toggle,fullscreen")
endf
nnoremap <silent> <F11> :call ToggleFullscreen()<CR>
" auto fullscreen
"autocmd VimEnter * call ToggleFullscreen()
