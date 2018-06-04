" 默认 --c++-kinds=+p+l，重新设置为 --c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v
" 默认 --fields=+iaS 不满足 YCM 要求，需改为 --fields=+iaSl
let g:indexer_tags_options = "-R --sort=yes --c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v --fields=+iaSl --extra=+q --languages=c,c++,php,python"
let g:indexer_tags_savedir = "~/.vim/indexer-tags/"

" add *.tex *.bib
let g:indexer_tags_watches = ["*.c", "*.h", "*.c++", "*.cpp", "*.php", "*.py", "*.tex", "*.bib"]
