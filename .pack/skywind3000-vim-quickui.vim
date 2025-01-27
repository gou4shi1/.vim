" appearance
let g:quickui_border_style = 2
let g:quickui_color_scheme = 'solarized'
let g:quickui_show_tip = 1

" preview quickfix
augroup MyQuickfixPreview
  au!
  au FileType qf noremap <silent><buffer> p :call quickui#tools#preview_quickfix()<cr>
augroup END

" <F1> to open the menu
noremap <F1> :call quickui#menu#open()<CR>

" setup all the menus
call quickui#menu#reset()

call quickui#menu#install("&Option", [
                  \ ['Set &GitLens %{g:GIT_LENS_ENABLED? "Off":"On"}', 'call ToggleGitLens()', 'call ToggleGitLens()'],
                  \ ['Set &Spell %{&spell? "Off":"On"}', 'set spell!', 'set spell!'],
                  \ ])

call quickui#menu#install('&Language', [
                  \ [ '&Compile', 'exec "normal \<F5>"', '<F5>'],
                  \ [ '&Run', 'exec "normal \<F6>"', '<F6>'],
                  \ [ '&Debug', 'exec "normal \<F7>"', '<F7>'],
                  \ ])
