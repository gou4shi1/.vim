let g:quickrun_config = {
\   "_" : {
\       "runner" : "terminal",
\   },
\   "cpp": {
\       "cmdopt": "-D LOCAL -std=c++17 -O2"
\   }
\}

nnoremap <F6> :QuickRun<CR>
