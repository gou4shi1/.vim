# 安装教程

https://goushi.me/gde-v3

# 使用教程

https://goushi.me/vim

# 目录结构

(父目录为 `~/.vim`)  
（可参考 [这里](http://learnvimscriptthehardway.stevelosh.com/chapters/42.html) 或者 [这里](http://www.panozzaj.com/blog/2011/09/09/vim-directory-structure/)）

- `vimrc`  
  基本的 Vim 配置  
  （插件的配置分开存放在 `.pack` 目录里）

- `gvimrc`  
  GVim 的专属配置

- `pack`  
  用 Vim 8 原生的 [packages](https://shapeshed.com/vim-packages/) 特性加载插件

  - `pack/xxx/start/` 下的插件 yyy 会在打开 Vim 时自动加载  
    （不过插件里的 autoload 目录依然会按需实时加载，所以插件放在 `start` 里也不会明显拖慢 Vim 的启动）
  - `pack/xxx/opt/` 下的插件 zzz 则需要在 Vim 里执行命令 `:packadd zzz` 后才会被加载

    然后可以对插件进行分类分目录存放  
    比如 `appearance` 目录里存放了外观相关的插件

- `.pack`  
  （可以自己写 [脚本](https://gist.github.com/d9f571575827d5032a23f23ae365da37) 方便下载、更新插件）  
  我这里用了别人写好的脚本 [pack](https://github.com/maralla/pack)  
  这个目录存放了 pack 的配置信息：

  - `packfile`  
    用 pack 安装插件时添加的参数都会保存在这个文件里  
    所以只要保留了这个文件，执行命令 `pack install` 就可以把所有插件装回来
  - `xxx-yyy.vim`  
    通过 `pack config xxx/yyy` 命令添加的插件配置将保存在这个文件  
    （并且会自动调用 `pack generate` 命令，把全部 `xxx-yyy.vim` 文件整合成一个文件 `plugin/_pack.vim`）

- `plugin`  
  执行`pack generate` 命令（一般会被自动执行）将把 `.pack` 目录里的各插件配置文件合并成 `plugin` 下的 `_pack.vim`

- `install.sh`  
  一键安装脚本（不包括 `rg` 等安装过程跟系统相关性较大的前置依赖)

- `swap`  
  统一存放所有交换文件，避免污染项目目录

- `spell`  
  存放 拼写检查 添加的字典文件

- `session`  
  存放 session 文件

- `UltiSnips`  
  存放自定义的 `snip` 文件

- `undo-history`  
  存放所有文件的可持久 `undo` 历史  
  (可持久指退出后再进来依然保持)

- `globalrc`  
  Gtags 的配置文件

# Plugins

## Default

- [mhinz/vim-startify](https://github.com/mhinz/vim-startify)  
  Provides a start screen to show recently used or bookmarked files and persistent sessions.

- [tpope/vim-unimpaired](https://github.com/tpope/vim-unimpaired)  
  `[b`/`]b` to navigate between buffers.  
  `[t`/`]t` to navigate between tabs.  
  `[f`/`]f` to navigate between files in current file's directory alphabetically.  
  `[<Space>`/`]<Space>` to add `[count]` blank lines before/below the cursor.  
  `[e`/`]e` to exchange the current line with `[count]` lines above/below it.  
  `[p`/`]p` to paste before/after linewise.  
  `=p`/`=P` to paste before/after linewise, reindenting.

- [tpope/vim-eunuch](https://github.com/tpope/vim-eunuch)  
  `:Delete` to delete a file on disk and the buffer too.  
  `:Remove` to delete a file on disk but keep the buffer.  
  `:Move`/`:Rename`/`:Copy` to rename a buffer and the file on disk simultaneously.  
  `:Chmod` to change the permissions of the current file.  
  `:Mkdir` to create a directory, defaulting to the parent of the current file.  
  `:Wall`/`:W` to write every open window instead of buffers.  
  `:SudoWrite`/`:SudoEdit` to write/edit a privileged file with sudo.  
  Typing a shebang line causes the file type to be re-detected, and the file will be automatically made executable (chmod +x) after the next write.

- [kana/vim-submode](https://github.com/kana/vim-submode)  
  Create your own submode keymaps.  
  For example, `<C-w><<<` to resize split window quickly.

- [rhysd/devdocs.vim](https://github.com/rhysd/devdocs.vim)  
  `<leader>K` to search the word under cursor in [devdocs.io](https://devdocs.io).  
  `:DevDocs [query]` to search *query* with filetype related documentations.

- [mattn/webapi-vim](https://github.com/mattn/webapi-vim)  
  An interface to web APIs. This plugin is depended by vim-gists.

## Language

- [sheerun/vim-polyglot](https://github.com/sheerun/vim-polyglot)  
  A bundle of hundreds of vim plugins:  
  Provides syntax and indentation support (no other features) for [almost all commonly used languages](https://github.com/sheerun/vim-polyglot#language-packs).  
  Automatically detects indentation (optimized version of [vim-sleuth](https://github.com/tpope/vim-sleuth)).

- [honza/vim-snippets](https://github.com/honza/vim-snippets)  
  This repository contains snippets files for various programming languages.

- [mlaursen/vim-react-snippets](https://github.com/mlaursen/vim-react-snippets)  
  A collection of common Javascript and Typescript snippets for developing React.

- [neoclide/coc.nvim](https://github.com/neoclide/coc.nvim)  
  A [LSP](https://microsoft.github.io/language-server-protocol) client that can load js extensions like VSCode.  
  `<C-k/j>` to navigate between diagnostics, `<C-y>` to auto fix the current diagnostic.  
  `<C-]>` to jump to the definition of current symbol, `<C-t>` to jump back in the tag stack.  
  `<leader>tr/tu/tt/ti` to jump to the references/references-used/type-definition/implementation of current symbol.  
  `K` to show the documentation of current symbol. `<F2>` to rename the current symbol.  
  `<leader>th` to switch between the implementation file and it's corresponding header file.  
  `<leader><leader>t` to toggle the tagbar.  
  `:SnipFiles` to view/edit available snippets files for the current file/filetype.  
  `:SnipUser` to edit the user snippets file under `~/.config/coc` for the current filetype.  
  `<C-j>/<C-k>` to jump between placeholders of a snippet.  
  `<leader>md` to open a real-time preview page of the current markdown file.

- [dense-analysis/ale](https://github.com/dense-analysis/ale)  
  A LSP client that focused on integrating with external linters.  
  It supports many filetypes by default, so it's a good supplement to CoC.

- [lervag/vimtex](https://github.com/lervag/vimtex)  
  A modern filetype and syntax plugin for LaTeX files.

- [HealsCodes/vim-gas](https://github.com/lervag/vimtex)  
  Advanced syntax highlighting for GNU asm files.

## Navigation

- [easymotion/vim-easymotion](https://github.com/easymotion/vim-easymotion)  
  It takes the `<num>` out of `<num>f{char}` by highlighting all possible choices and allowing you to press one key to jump directly to the target.  
  `<leader>f{char}` to jump to any `{char}` in the screen directly.  
  `<leader>j/k` to jump to any line in the screen directly.

- [lambdalisue/fern.vim](https://github.com/lambdalisue/fern.vim)  
  `-` to open a file tree viewer on the parent directory of the current buffer in the current window, i.e. [netrw](https://vonheikemen.github.io/devlog/tools/using-netrw-vim-builtin-file-explorer/) style.  
  `<Leader><Leader>f` to open a project drawer in the sidebar, i.e. [nerdtree](https://github.com/preservim/nerdtree) style.  
  In the viewer:  
  `h/j/k/l` to navigate between files/directories, `p/<C-p>` to preview the file under cursor.  
  `-` or `<CR>` to change the root node to the parent or the selected children node.  
  `<leader>q` or `:bd` to close the [netrw](https://www.vim.org/scripts/script.php?script_id=1075) style viewer.  

- [junegunn/fzf](https://github.com/junegunn/fzf)  
  As a vim plugin, this repo provide some core integration functions: `fzf#run` and `fzf#wrap`.

- [junegunn/fzf.vim](https://github.com/junegunn/fzf.vim)  
  This repo is a bundle of fzf-based [commands and mappings](https://github.com/junegunn/fzf.vim#commands), such as `Rg`.

- [antoinemadec/coc-fzf](https://github.com/antoinemadec/coc-fzf)  
  This plugin uses fzf in place of Coc's built-in CocList sources as well as Coc's jumps (definition, reference etc).  
  `CocFzfList` is a drop-in replacement of `CocList`, you can also `add_list_source` for other useful commands.  
  Mappings in config: `<C-f>p/f/b/l/q/m/h/c/g/d/:`

- [jesseleite/vim-agriculture](https://github.com/jesseleite/vim-agriculture)  
  `RgRaw` provide the ability to pass command line options to `rg` (compared with `Rg`).  
  `<C-f>r` to grep visual selection (in visual mode) or word under cursor (in normal mode).

- [dyng/ctrlsf.vim](https://github.com/jesseleite/vim-agriculture)  
  Similar to `<C-f>r`, but `<C-f>w` can merge contexts of adjacent grep results.

- [dkprice/vim-easygrep](https://github.com/dkprice/vim-easygrep)  
  `<leader>vv/vr` to grep/replace in the open buffers (`<leader>vo` to change options).

- [ludovicchabant/vim-gutentags](https://github.com/ludovicchabant/vim-gutentags)  
  Automatically generate/update gtags database for the current project.

- [skywind3000/gutentags_plus](https://github.com/skywind3000/gutentags_plus)  
  Automatically connect gtags database for the current project.  
  Mappings in config: `<leader>gs/gg/gd/gc/gt/ge/gf/gi/ga`

- [Yggdroot/LeaderF](https://github.com/Yggdroot/LeaderF)  
  Another fuzzy finder that similar to fzf.  
  Some subcommands that better than fzf are integrated into `CocFzfList`.

- [haya14busa/incsearch.vim](https://github.com/haya14busa/incsearch.vim)  
  Incrementally highlights all matches, but this feature is already provided by [vim 8.0.1238](https://medium.com/@haya14busa/incsearch-vim-is-dead-long-live-incsearch-2b7070d55250).  
  So only one keymap is left: `z/` to search without cursor move.

- [haya14busa/is.vim](https://github.com/haya14busa/is.vim)  
  Successor of incsearch.vim (keep incsearch.vim since some plugins depend on it).  
  Automatically clear search highlights after cursor moved.  
  `<C-j>/<C-k>` to incrementally scroll between pages of search matches.

- [haya14busa/incsearch-fuzzy.vim](https://github.com/haya14busa/incsearch-fuzzy.vim)  
  Incremental fuzzy search extension for incsearch.vim.  
  ~`f/`/`f?`/`fz/` to do fuzzy search.~  
  ~`ff/`/`ff?`/`ffz/` to do fuzzy search with the spell feature of vim.~

- [haya14busa/incsearch-easymotion.vim](https://github.com/haya14busa/incsearch-easymotion.vim)  
  Integration between incsearch.vim and vim-easymotion.  
  `<Leader>/`/`<Leader>?`/`<Leader>z/` to search with easymotion.  
  `<Leader><Leader>/` to do fuzzy search with easymotion.

- [haya14busa/vim-asterisk](https://github.com/haya14busa/vim-asterisk)  
  Improve `*/#/g*/g#` motions: smartcase, work in visual mode.  
  `z*/gz*/z#/gz#` to stay cursor.

- [andymass/vim-matchup](https://github.com/andymass/vim-matchup)  
  Extends vim's `%` motion to language-specific words.  
  Highlights symbols and words under the cursor which `%` can work on.  
  motions: `g%`/`[%`/`]%`/`z%`.  
  text objects: `i%`/`a%`.

- [kshenoy/vim-signature](https://github.com/kshenoy/vim-signature)  
  Manage and display marks:  
  `mx`/`m.` to toggle mark at current cursor.  
  `m-`/`m<spacee>` to delete all marks from the current line/buffer.  
  `['`/`]'`/`'[`/`']`/`m/` to navigate between marks.

## Edit

- [sbdchd/neoformat](https://github.com/sbdchd/neoformat)  
  `<Leader>=` to format the entire buffer or visual selection with various formatters (prefer using coc-formatt).

- [mg979/vim-visual-multi](https://github.com/mg979/vim-visual-multi)  
  To create multiple cursors:  
  Select words with `<C-n>`, or select characters with `<S-Right/Left>`, then `n/N` to get the next/previous occurrence, `q` to skip current and get the next.  
  Create cursors vertically with `<C-Down/Up>`, then `[/]` to select the previous/next cursor, `Q` to remove the current cursor/selection.  
  `<Tab>` to switch between cursor mode (similar as normal mode) and extend mode (similar as visual mode).

- [gcmt/wildfire.vim](https://github.com/gcmt/wildfire.vim)  
  Press `<Enter>` in normal mode to select the closest text object.  
  Keep pressing `<Enter>` for selecting the next closest text object.  
  To select the previously selected text object, press `<BS>`.
  ![Preview](https://github.com/gcmt/wildfire.vim/raw/master/_assets/preview.gif)

- [wellle/targets.vim](https://github.com/wellle/targets.vim)  
  It adds various text objects to expand the idea of built-in `di'`.  
  Pair text objects: `()`/`{}`/`[]`/`<>`.  
  Quote text objects: `'`/`"`/`` ` ``.  
  Separator text objects: `,`/`.`/`;`/`:`/`+`/`-`/`=`/`~`/`_`/`*`/`#`/`/`/`|`/`\`/`&`/`$`.  
  Argument text objects: similar to separator text objects, but are specialized for arguments surrounded by braces and commas.  
  Any text objects: `nb` for any block, `nq` for any quote.
  ```
  a ( b ( cccccccc ) d ) e
    │   └─── a) ───┘   │
    └────── 2a) ───────┘

  a ( b ( cccccccc ) d ) e
     │   └── i) ──┘   │
     └───── 2i) ──────┘

  a ( b ( cccccccc ) d ) e
      │   └─ I) ─┘   │
      └──── 2I) ─────┘

  func( xxxxxxxxx , yyyyy )
        └── aa ────┘

  func( xxxxxxxxx , yyyyy )
       └── ia ───┘

  func( xxxxxxxxx , yyyyy )
        └── Ia ─┘
  ```

- [vim-sandwich](https://github.com/machakann/vim-sandwich)  
  Use keymaps from [vim-surround](https://github.com/tpope/vim-surround):  
  `ys{motion/textobject}{surrounding}` (or `S{surrounding}` in visual mode) to add `surrounding`, e.g. `ysiw)` makes `foo` to `(foo)` (use `(` instead of `)` to add spaces).  
  `ds{surrounding}` to delete `surrounding`, e.g. `ds(` or `dss` makes `( foo )` to `foo` (`dss` searches a set of surrounding automatically).  
  `cs{old}{new}` to replace `old` with `new`, e.g. `cs("` or `css"` makes `(foo)` to `"foo"` (`css` is similar as `dss`).

- [rlue/vim-barbaric](https://github.com/rlue/vim-barbaric)  
  Keep and restore input method state for each buffer separately when leaving/re-entering insert mode.  
  Like always typing English in normal mode, but Chinese in insert mode.

- [jiangmiao/auto-pairs](https://github.com/jiangmiao/auto-pairs)  
  Insert/Delete in pair.  
  Insert new indented line after `<CR>`.  
  Insert spaces before closing characters.  
  Only some filetype-based characters are enabled in config.

- [tpope/vim-abolish](https://github.com/tpope/vim-abolish)  
  Work with several variants of a word at once.  
  `crs` to coerce to snake_case, `crc` to camelCase, `crm` to MixedCase  
  `cru` to coerce to UPPER_CASE, `cr-` to dash-case, `cr.` to dot.case  
  `:Abolish {despa,sepe}rat{e,es,ed,ing,ely,ion,ions,or} {despe,sepa}rat{}` to produce 48 `iabbrev`.  
  `:%S/facilit{y,ies}/building{,s}/g` will be expanded to
  ``` viml
  :%s/facility/building/g
  :%s/Facilities/Buildings/g
  :%s/FACILITIES/BUILDINGS/g
  ```

- [tpope/vim-capslock](https://github.com/tpope/vim-capslock)  
  `<C-G>c` in insert mode to toggle a temporary software caps lock.  
  `gC` in normal mode to toggle a slightly more permanent one.

- [simnalamburt/vim-mundo](https://github.com/simnalamburt/vim-mundo)  
  `<Leader><Leader>u` to visualize the Vim undo tree.

- [kkoomen/vim-doge](https://github.com/kkoomen/vim-doge)  
  `<Leader>do` to generate documentations (cursor should on the first line of function).  
  `<C-j>/<C-k>` to jump between TODO items of the documentation generated.

- [junegunn/vim-easy-align](https://github.com/junegunn/vim-easy-align)  
  `ga{motion/textobject}{align-char}` (or `ga{align-char}` in visual mode) to align selected lines with align char, e.g. `gaip=` or `vipga=` to align lines in current paragraph with `=`.

- [tpope/vim-rsi](https://github.com/tpope/vim-rsi)  
  Get the most useful key bindings from Readline (similar to Emacs) without blindly overriding built-in Vim functionality.  
  `<C-a>`/`<C-e>` to jump to the start/end of current line in insert mode (similar as `<Home>`/`<End>`).  
  `<C-b>`/`<C-f>` to jump to the left/right char in insert mode (similar as `<Left>`/`<Right>`).  
  `<M-b>`/`<M-f>` to jump to the previous/next word (similar as `<C- <- >`/`<C- -> >`).  
  `<C-d>` to delete the next char in insert mode (similar as `<Del>`).

- [tpope/vim-speeddating](https://github.com/tpope/vim-speeddating)  
  `<C-a>/<C-x>` to increment dates, times, and more.

- [tpope/vim-repeat](https://github.com/tpope/vim-repeat)  
  It remaps `.` in a way that plugins can tap into it.  
  The following plugins support it: surround.vim, speeddating.vim and unimpaired.vim.

- [ojroques/vim-oscyank](https://github.com/ojroques/vim-oscyank)  
  `<Leader>y` to copy text from remote SSH sessions to the system clipboard using the ANSI OSC52 sequence.

- [vim-scripts/DrawIt](https://github.com/vim-scripts/DrawIt)  
  `<Leader>di`/`<Leader>ds` to start/stop DrawIt mode.  
  In DrawIt mode, use `<left>`/`<right>`/`<up>`/`<down>`/`<`/`>`/`^`/`v`/... to draw dashes/arrows.

## Buffer

- [mhinz/vim-sayonara](https://github.com/mhinz/vim-sayonara)  
  `<Leader>q` to delete the current buffer without closing your windows or messing up your layout.  
  `:Q` as an alternative to `:q`.

- [vim-scripts/BufOnly.vim](https://github.com/vim-scripts/BufOnly.vim)  
  `:Bonly` to delete all buffers but the current one.

- [mtth/scratch.vim](https://github.com/mtth/scratch.vim)  
  `<Leader>sc/sC` to open a unobtrusive scratch window with/without previous content.  
  It will also copy the selected content to the scratch window if pressed in visual mode.

- [farmergreg/vim-lastplace](https://github.com/farmergreg/vim-lastplace/)  
  Intelligently reopen files at your last edit position.

- [gou4shi1/GoldenView.Vim](https://github.com/gou4shi1/GoldenView.Vim)  
  Automatically resize the focused split window to a "golden" view based on golden ratio and textwidth.

- [romainl/vim-qf](https://github.com/romainl/vim-qf)  
  A collection of settings, commands and mappings to tame the quickfix/location window.  
  Quickfix buffers are hidden from `:ls` and buffer navigation.  
  Quit Vim if the last window is a quickfix/location window.  
  Close the location window automatically when quitting parent window.  
  And some commands that are only available in the quickfix/location window.  
  `<leader><leader>l` to toggle the location window.

## Run

- [voldikss/vim-floaterm](https://github.com/voldikss/vim-floaterm)  
  `<F8>` to open a new terminal in the popup window.  
  `<F9>/<S-F9>` to switch to the next/prev terminal.  
  `<F10>` to toggle the popup window.

- [kassio/neoterm](https://github.com/kassio/neoterm)  
  `:T cmd` is a replacement of `:term cmd` that reuse the terminal already exists.  
  TODO: Add keymaps for [REPL](https://github.com/kassio/neoterm#repl).

- [skywind3000/asyncrun.vim](https://github.com/skywind3000/asyncrun.vim)  
  `:AsyncRun cmd` to run your command asynchronously and see output in quickfix/floaterm/neoterm.

- [skywind3000/asynctasks.vim](https://github.com/skywind3000/asynctasks.vim)  
  It uses a `.tasks` file in your project folders for local tasks and uses `~/.vim/tasks.ini` to define global tasks.  
  `<F5>/<F6>/<F7>` to compile/run/debug the current file in floaterm.

## Git

- [airblade/vim-gitgutter](https://github.com/airblade/vim-gitgutter)  
  Show git diff in the sign column.  
  `[h/]h` to jump between hunks, `<leader>hp/hs/hu` to preview, stage, and undo hunks.

- [rhysd/conflict-marker.vim](https://github.com/rhysd/conflict-marker.vim)  
  Highlight, jump and resolve conflict markers quickly.  
  `[<`/`]<` to jump to the next/prev conflict marker `<<<<<`.  
  `ct/co/cn/cb/cB` to choose them/our/none/both to resolve conflicts.

- [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)  
  `:Git/G xxx` as an alternative to `:!git xxx` to call any arbitrary git command.  
  For example, `:G blame` to blame the current file in a scroll-bound split view, `:G` to open a summary window.  
  Additional commands are also provided, e.g. `:Gedit HEAD~3:%` to load the current file as it existed 3 commits ago.

- [tpope/vim-rhubarb](https://github.com/tpope/vim-rhubarb)  
  The GitHub extension for fugitive.vim.  
  `:GBrowse` to open the corresponding GitHub url in browser.  
  In commit messages, GitHub issues, issue URLs, and collaborators can be omni-completed.

- [jparise/vim-phabricator](https://github.com/jparise/vim-phabricator)  
  The Phabricator extension for fugitive.vim.  
  `:GBrowse` to open the corresponding Phabricator url in browser.  
  Syntax highlighting for Arcanist templates and configuration files.  
  In arc diff templates, Phabricator users and projects can be omni-completed.

- [rbong/vim-flog](https://github.com/rbong/vim-flog)  
  `:Flog` to view the git commit graph.  
  In the graph, `gr` to toggle viewing the reflog, `gb` to toggle bisect mode, `gq` to quit.

- [mattn/vim-gist](https://github.com/mattn/vim-gist)  
  `Gist` to post current buffer to gist, `:'<,'>Gist` to post selected texts, `:Gist -m` to post all open buffers.  
  `-p` to create a private gist, `-P` to create a public gist, `-a` to create anonymously.

- [Eliot00/git-lens.vim](https://github.com/Eliot00/git-lens.vim)  
  Show git blame as VS Code's GitLens plugin.  
  You can toggle it in the `<F1>` menu.
  ![git-lens gif](https://user-images.githubusercontent.com/18375468/185842698-f84c7c55-fdbe-4573-817c-e19934c0e436.gif)

## Appearance 

- [lifepillar/vim-solarized8](https://github.com/lifepillar/vim-solarized8)  
  A solarized colorscheme that is optimized for true-color terminals.

- [vim-airline/vim-airline](https://github.com/vim-airline/vim-airline)  
  Lean & mean status/tabline for vim.

- [vim-airline/vim-airline-themes](https://github.com/vim-airline/vim-airline-themes)  
  A collection of themes for vim-airline.

- [jszakmeister/vim-togglecursor](https://github.com/jszakmeister/vim-togglecursor)  
  Toggle the cursor shape when entering the insert mode.

- [luochen1990/rainbow](https://github.com/luochen1990/rainbow)  
  Show different levels of parentheses in different colors.

- [preservim/vim-indent-guides](https://github.com/preservim/vim-indent-guides)  
  Visually display indent levels.

- [skywind3000/vim-quickui](https://github.com/skywind3000/vim-quickui)  
  `<F1>` to toggle the help menu.  
  `p` in the quickfix window to open a preview window.

- [ryanoasis/vim-devicons](https://github.com/ryanoasis/vim-devicons)  
  Adds file type icons to Vim plugins such as: NERDTree, vim-airline, vim-startify.

- [lambdalisue/vim-nerdfont](https://github.com/lambdalisue/vim-nerdfont)  
  A simplified version of vim-devicons which does NOT provide any 3rd party integrations in itself. 

- [lambdalisue/vim-glyph-palette](https://github.com/lambdalisue/vim-glyph-palette)  
  Universally apply colors on Nerd Fonts, e.g. vim-devicons, vim-nerdfont and vim-fern-renderer-nerdfont will be nicely highlighted.
