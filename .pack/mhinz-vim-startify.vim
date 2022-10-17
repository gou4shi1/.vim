let g:startify_change_to_dir = 0
let g:startify_custom_header = []
let g:startify_lists = [
        \ { 'type': 'files',     'header': ['MRU']            },
        \ { 'type': 'dir',       'header': ['MRU ' . getcwd()]},
        \ { 'type': 'sessions',  'header': ['Sessions']       },
        \ { 'type': 'bookmarks', 'header': ['Bookmarks']      },
        \ { 'type': 'commands',  'header': ['Commands']       },
        \ ]
let g:startify_bookmarks = [
        \ {'v': '~/.vim/vimrc'},
        \ ]

hi link StartifyBracket Punctuation
hi link StartifyFile String
hi link StartifyFooter Normal
hi link StartifyHeader Comment
hi link StartifyNumber Function
hi link StartifyPath Statement
