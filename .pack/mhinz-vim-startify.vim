" hide quote
let g:startify_custom_header = []

" list
let g:startify_lists = [
            \ { 'type': 'files',     'header': [   'MRU']            },
            \ { 'type': 'dir',       'header': [   'MRU '. getcwd()] },
            \ { 'type': 'sessions',  'header': [   'Sessions']       },
            \ { 'type': 'bookmarks', 'header': [   'Bookmarks']      },
            \ { 'type': 'commands',  'header': [   'Commands']       },
            \ ]

" bookmarks
  let g:startify_bookmarks    = [
        \{'v': '~/.vim/vimrc'},
        \{'z': '~/.zshrc'},
        \{'i': '~/.i3/config'},
\]

" highlight
hi link StartifyBracket Punctuation
hi link StartifyFile String
hi link StartifyFooter Normal
hi link StartifyHeader Comment
hi link StartifyNumber Function
hi link StartifyPath Statement
