" <F1> to open the menu
noremap <F1> :call quickui#menu#open()<CR>

" appearance
let g:quickui_border_style = 2
let g:quickui_color_scheme = 'solarized'

" display tips in the cmdline
let g:quickui_show_tip = 1

" setup all the menus
call quickui#menu#reset()

call quickui#menu#install("&Option", [
                  \ ['Set &Spell %{&spell? "Off":"On"}', 'set spell!', 'set spell!'],
                  \ ])

call quickui#menu#install('&Language', [
                  \ [ '&Compile', 'exec "normal \<F5>"', '<F5>'],
                  \ [ '&Run', 'exec "normal \<F6>"', '<F6>'],
                  \ [ '&Debug', 'exec "normal \<F7>"', '<F7>'],
                  \ ])
