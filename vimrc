"""""""""""""""""""""""""""""" General Setting
source $VIMRUNTIME/defaults.vim

" indent
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
"set smartindent
"set autoindent

" fold
set nofoldenable
"set foldmethod=syntax
"set foldmethod=indent

" search
set hlsearch
set ignorecase
set smartcase
set magic

" recovery
set undofile
set undodir=~/.vim/undo-history
set directory=~/.vim/swap
set viminfo+=n~/.vim/viminfo
set viminfo^=!
set sessionoptions-=options
set viewoptions-=options

" timeout
set timeoutlen=500
set updatetime=1000

" Auto read the file again when it's detected to have been changed outside.
set autoread
" Auto save while moving thought the buffers.
"set autowrite
" Allow moving through the buffers without save.
set hidden

" Allow < > h l to move the cursor to the previous/next line
"set whichwrap+=<,>,h,l

" Delete comment character when joining commented lines.
set formatoptions+=j

" When a bracket is inserted, briefly jump to the matching one.
"set showmatch
"set mat=2

" Display the completion matches using the popup menu.
set wildoptions=pum

" Patterns to ignore for expand(), ctrlp, etc.
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz,*.swp,*~,._*,*.pyc,*__pycache__*,*.egg-info

" Automatically creates `foo/bar/` as needed when `:w foo/bar/baz.txt`
autocmd BufWritePre,FileWritePre * silent! call mkdir(expand('<afile>:p:h'), 'p')

"""""""""""""""""""""""""""""" Appearance
set background=dark

if has("termguicolors")
  " Require a vim compiled with `+termguicolors` and run in a true-color terminal.
  set termguicolors
  " https://github.com/lifepillar/vim-solarized8#troubleshooting
  if $TERM ==# 'tmux-256color'
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  endif
endif

" Precede each line with its line number.
set number

" Always show the signcolumn, otherwise it would shift the text each time diagnostics appear/disappear.
set signcolumn=yes

" Highlight the current line and column of the cursor.
set cursorline
set cursorcolumn

" Lines will not wrap and only part of long lines will be displayed.
set nowrap

" Show a few lines of context around the cursor.
set scrolloff=5
set sidescrolloff=5

" The maximum number of items to show in the popup menu for completion.
set pumheight=20

" Put the new splitting window right of the current one by default.
set splitright

" Set default whitespace characters when using `:set list`
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+

"""""""""""""""""""""""""""""" Builtin Plugins
"""""""""" Termdebug
" Let termdebug split vertically.
let g:termdebug_wide = 1

"""""""""" Vimdiff
" Disable syntax highlight in vimdiff.
if &diff
    syntax off
    let g:syntax_on = 0
endif

"""""""""""""""""""""""""""""" Keyboard Mapping
" use <Space> as <Leader>
let mapleader = "\<space>"

" Quick select the whole file.
nnoremap <leader>a ggVG

" Copy to and paste from the system clipboard.
vnoremap <Leader>y "+y
nnoremap <Leader>p "+p

" Clear highlights.
nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>

" Blame the current line.
nmap <silent> <Leader>gb :call setbufvar(winbufnr(popup_atcursor(split(system("git log -n 1 -L " . line(".") . ",+1:" . expand("%:p")), "\n"), { "padding": [1,1,1,1], "pos": "botleft", "wrap": 0 })), "&filetype", "git")<CR>

" Toggle the spell checking.
nnoremap <Leader><Leader>s :setlocal spell! spelllang=en,cjk<CR>

" Echo the syntax highlight group of the word under cursor.
nmap <leader>sh :call <SID>SynStack()<CR>
function! s:SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" %% -> local path
cnoremap <expr> %% getcmdtype( ) == ':' ? expand('%:h').'/' : '%%'
