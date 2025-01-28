" powerline fonts
let g:airline_powerline_fonts = 1

" tabline
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#buffer_nr_show = 1

let g:airline#extensions#default#section_truncate_width = {
    \ 'b': 79,
    \ 'x': 60,
    \ 'y': 80,
    \ 'z': 128,
    \ 'warning': 80,
    \ 'error': 80,
    \ }

" extra-powerline-symbols
"let g:airline_left_sep = "\uE0C0"
"let g:airline_right_sep = "\uE0C2"
