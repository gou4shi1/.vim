"""""""""""""""""""""""""""""" General Setting
set nocompatible

filetype plugin indent on
syntax enable

set encoding=utf-8

" enable mouse
set mouse=a

" indent
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
"set smartindent
"set autoindent
"filetype indent on

" fold
set nofoldenable
"set foldmethod=syntax
"set foldmethod=indent

" $ . * ^ will be taken literally in regex
set magic

" serach
set hlsearch
set incsearch

" case
set ignorecase
set smartcase

" increase lines of command line history
set history=500

" Show a few lines of context around the cursor.
" Note that this makes the text scroll
" if you mouse-click near the start or end of the window.
set scrolloff=5
set sidescrolloff=5

" display completion matches in a status line
set wildmenu
" display incomplete commands
set showcmd

" Allow backspacing over everything in insert mode.
set backspace=eol,start,indent

" Allow < > h l to move the cursor to the previous/next line
"set whichwrap+=<,>,h,l

" lines will not wrap and only part of long lines will be displayed
set nowrap

" auto read the file again when it's detected to have been changed outside
" In terminal, the change will be detected only after executing outside command (likes `:~`)
set autoread
" auto save while moving thought the buffers
"set autowrite
" allow moving through the buffers without save
set hidden

" put the new splitting window right of the current one by default
set splitright

" When a bracket is inserted, briefly jump to the matching one
"set showmatch
"set mat=2

" Delete comment character when joining commented lines
set formatoptions+=j

" Do not recognize octal numbers for Ctrl-A and Ctrl-X
set nrformats-=octal

" langremap is set by default for backward compatible
" but it may break plugins
set nolangremap

" Patterns to ignore for expand(), ctrlp, etc.
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz,*.swp,*~,._*,*.pyc,*__pycache__*,*.egg-info

" Search upwards for tags file instead only locally
"setglobal tags-=./tags tags-=./tags; tags^=./tags;

" recovery
set undofile
set undodir=~/.vim/undo-history
set directory=~/.vim/swap
set viminfo+=n~/.vim/viminfo


" Always save upper case variables to viminfo file.
"set viminfo^=!

" Don't save options in sessions and views
"set sessionoptions-=options
"set viewoptions-=options

" jump to last cursor position
augroup vimStartup
    au!
    " When editing a file, always jump to the last known cursor position.
    " Don't do it when the position is invalid, when inside an event handler
    " (happens when dropping a file on gvim) and for a commit message (it's
    " likely a different one than last time).
    autocmd BufReadPost *
                \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
                \ |   exe "normal! g`\""
                \ | endif

augroup END

" automatically creates foo/bar/ as-needed when `:w foo/bar/baz.txt:`
autocmd BufWritePre,FileWritePre * silent! call mkdir(expand('<afile>:p:h'), 'p')

"""""""""""""""""""""""""""""" Appearance
" background
set background=dark
"set background=light

" require a vim compiled with `+termguicolors` and run on a true-color terminal
set termguicolors

" display auxiliary information
set number
"set cmdheight=2
"set laststatus=2
"set ruler

" highlight the current line and column of the cursor
set cursorline
set cursorcolumn

" Always show the signcolumn, otherwise it would shift the text each time diagnostics appear/disappear.
set signcolumn=yes

" Set default whitespace characters when using `:set list`
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+

" Disable syntax highlight in vimdiff.
if &diff
    syntax off
    let g:syntax_on = 0
endif

"""""""""""""""""""""""""""""" File Type
" scheme indent
"autocmd FileType lisp,scheme,art setlocal equalprg=scmindent.rkt

" git commit messages
"autocmd FileType gitcommit setlocal nolist textwidth=72

" c/cpp file header
"autocmd bufnewfile *.c,*.cpp,*.h,*.hpp so ~/.vim/file-headers/c_header.txt
"autocmd bufnewfile *.c,*.cpp,*.h,*.hpp exe "1," . 7 . "g/File Name :.*/s//File Name : " .expand("%")
"autocmd bufnewfile *.c,*.cpp,*.h,*.hpp exe "1," . 7 . "g/Creation Date :.*/s//Creation Date : " .strftime("%Y年%m月%d日")
"autocmd bufnewfile *.c,*.cpp,*.h,*.hpp exe "normal 3G$"
"
"autocmd Bufwritepre,filewritepre *.c,*.cpp,*.h,*.hpp silent! exe "1," . 7 . "g/Last Modified :.*/s/Last Modified :.*/Last Modified : " .strftime("%c")
"autocmd bufwritepost,filewritepost *.c,*.cpp,*.h,*.hpp exe "normal! \<c-o>"

"""""""""""""""""""""""""""""" Builtin Plugins
"""""""""" Termdebug
" let Termdebug splited vertically
let g:termdebug_wide = 1

"""""""""" Man
" :Man command
"runtime ftplugin/man.vim

"""""""""""""""""""""""""""""" Keyboard Mapping
" use <Space> as <Leader>
let mapleader = "\<space>"

" time out
set timeoutlen=500
set ttimeout
set ttimeoutlen=100
set updatetime=1000

" Quick select whole file
nnoremap <leader>a ggVG

" copy to and paste from system clipboard
vnoremap <Leader>y "+y
nnoremap <Leader>p "+p

" no highlight
nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>

" CTRL-U/W in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>
inoremap <C-W> <C-G>u<C-W>

" see the difference between the current buffer and
" the file it was loaded from, thus the changes you made.
command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis | wincmd p | diffthis

" sudo save
command W w !sudo tee % > /dev/null

" %%->local path
cnoremap <expr> %% getcmdtype( ) == ':' ? expand('%:h').'/' : '%%'

" toggle spell checking
nnoremap <Leader><Leader>s :setlocal spell! spelllang=en,cjk<CR>

" echo syntax highlight group of word under cursor
nmap <leader>sh :call <SID>SynStack()<CR>
function! s:SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" cmake
"nnoremap <Leader>cm :cd build<CR>:AsyncRun -save=1 -post='cd ..' cmake ..<CR>
"nnoremap <Leader>ma :cd build<CR>:Async -save=1 -post='cd ..' make<CR>

" temporarily fix https://github.com/vim/vim/issues/5617
let &t_TI = ""
let &t_TE = ""
