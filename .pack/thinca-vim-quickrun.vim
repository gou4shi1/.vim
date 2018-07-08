let g:quickrun_config = {
\   "_" : {
\       "outputter" : "message",
\   },
\   "cpp": {
\       "cmdopt": "-D LOCAL -std=c++14 -O2"
\   }
\}

nmap <Leader><F6> <Plug>(quickrun)
