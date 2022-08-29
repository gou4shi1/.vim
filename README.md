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

- `tags`  
  存放手动生成的 ctags 文件（比如 `stdc++.tags`）

- `file-headers`  
  存放自定义的文件头

- `UltiSnips`  
  存放自定义的 `snip` 文件

- `undo-history`  
  存放所有文件的可持久 `undo` 历史  
  (可持久指退出后再进来依然保持)

- `globalrc`  
  Gtags 的配置文件

# Plugins

## Default

- [sheerun/vim-polyglot](https://github.com/sheerun/vim-polyglot)  
  A bundle of hundreds of vim plugins:  
  Provides syntax and indentation support (no other features) for [almost all commonly used languages](https://github.com/sheerun/vim-polyglot#language-packs).  
  Automatically detects indentation (optimized version of [vim-sleuth](https://github.com/tpope/vim-sleuth)).

- [kana/vim-submode](https://github.com/kana/vim-submode)  
  Create your own submode keymaps.  
  For example, `<C-w><<<` to resize split window quickly.

## LSP

- [neoclide/coc.nvim](https://github.com/neoclide/coc.nvim)  
  A [LSP](https://microsoft.github.io/language-server-protocol) client that can load js extensions like VSCode.

## Navigation

- [junegunn/fzf](https://github.com/junegunn/fzf)  
  As a vim plugin, this repo provide some core integration functions: `fzf#run` and `fzf#wrap`.

- [junegunn/fzf.vim](https://github.com/junegunn/fzf.vim)  
  This repo is a bundle of fzf-based [commands and mappings](https://github.com/junegunn/fzf.vim#commands), such as `Rg`.

- [yuki-ycino/fzf-preview.vim](https://github.com/yuki-ycino/fzf-preview.vim)  
  Seems only the [Interactive Git Integration](https://github.com/yuki-ycino/fzf-preview.vim#interactive-git-integration-integrate-with-fugitive-or-gina) is useful.

- [antoinemadec/coc-fzf](https://github.com/antoinemadec/coc-fzf)  
  This plugin uses fzf in place of Coc's built-in CocList sources as well as Coc's jumps (definition, reference etc).  
  `CocFzfList` is a drop-in replacement of `CocList`, you can also `add_list_source` for other useful commands.  
  Mappings in config: `<C-f>p/f/b/l/q/m/h/c/g/d/:`

- [jesseleite/vim-agriculture](https://github.com/jesseleite/vim-agriculture)  
  `RgRaw` provide the ability to pass command line options to `rg` (compared with `Rg`).  
  `<C-f>r` to grep visual selection (in visual mode) or word under cursor (in normal mode).

- [dkprice/vim-easygrep](https://github.com/dkprice/vim-easygrep)  
  `<leader>vv/vr` to grep/replace in the open buffers (`<leader>vo` to change options).

- [gou4shi1/vim-gutentags](https://github.com/gou4shi1/vim-gutentags)  
  Automatically generate/update gtags database for the current project.

- [skywind3000/gutentags_plus](https://github.com/skywind3000/gutentags_plus)  
  Automatically connect gtags database for the current project.  
  Mappings in config: `<leader>gs/gg/gd/gc/gt/ge/gf/gi/ga`

- [Yggdroot/LeaderF](https://github.com/Yggdroot/LeaderF)  
  Another fuzzy finder that similar to fzf.  
  Some subcommands that better than fzf are integrated into `CocFzfList`.

- [liuchengxu/vista.vim](https://github.com/liuchengxu/vista.vim)  
  Replacement of [tagbar](https://github.com/majutsushi/tagbar) that also support LSP.  
  `<Leader><Leader>t` to toggle the sidebar (keymaps in sidebar: `p`, `q` and `/`).

- [haya14busa/incsearch.vim](https://github.com/haya14busa/incsearch.vim)  
  Incrementally highlights all matches, but this feature is already provided by [vim 8.0.1238](https://medium.com/@haya14busa/incsearch-vim-is-dead-long-live-incsearch-2b7070d55250).  
  So only one keymap is left: `z/` to search without cursor move.

- [haya14busa/is.vim](https://github.com/haya14busa/is.vim)  
  Successor of incsearch.vim (keep incsearch.vim since some plugins depend on it).  
  Automatically clear search highlights after cursor moved.  
  `<C-j>/<C-k>` to incrementally scroll between pages of search matches.

- [haya14busa/incsearch-fuzzy.vim](https://github.com/haya14busa/incsearch-fuzzy.vim)  
  Incremantal fuzzy search extension for incsearch.vim.  
  ~`f/`/`f?`/`fz/` to do fuzzy search.~  
  ~`ff/`/`ff?`/`ffz/` to do fuzzy search with the spell feature of vim.~

- [haya14busa/incsearch-easymotion.vim](https://github.com/haya14busa/incsearch-easymotion.vim)  
  Integration between incsearch.vim and vim-easymotion.  
  `<Leader>/`/`<Leader>?`/`<Leader>z/` to search with easymotion.  
  `<Leader><Leader>/` to do fuzzy search with easymotion.

- [haya14busa/vim-asterisk](https://github.com/haya14busa/vim-asterisk)  
  Improve `*/#/g*/g#` motions: smartcase, work in visual mode.  
  `z*/gz*/z#/gz#` to stay cursor.

## Edit

- [preservim/nerdcommenter](https://github.com/preservim/nerdcommenter)  
  `<Leader>cc` to comment out the current line or text selected in visual mode.  
  `<Leader>cl` to align at left.  
  `<Leader>cs` to comment out the selected lines with a pretty block formatted layout.  
  `<Leader>cu` to uncomment the selected line(s).

- [gcmt/wildfire.vim](https://github.com/gcmt/wildfire.vim)  
  Press `<Enter>` in normal mode to select the closest text object.  
  Keep pressing `<Enter>` for selecting the next closest text object.  
  To select the previously selected text object, press `<BS>`.
  ![Preview](https://github.com/gcmt/wildfire.vim/raw/master/_assets/preview.gif)

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

## Completion

- [kkoomen/vim-doge](https://github.com/kkoomen/vim-doge)  
  `<Leader>do` to generate documentations (cursor should on the first line of function).  
  `<C-j>/<C-k>` to jump between TODO items of the documentation generated.

- [SirVer/ultisnips](https://github.com/SirVer/ultisnips)  
  `:SnipEdit` to view/edit all available snippets for the current file/filetype.  
  `<C-j>` to expand snippets after keywords.  
  `<C-j>/<C-k>` to jump forward/backward within a snippet.

- [honza/vim-snippets](https://github.com/honza/vim-snippets)  
  Contains community-maintained snippets for various programming languages.

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

## Run

- [voldikss/vim-floaterm](https://github.com/voldikss/vim-floaterm)  
  `<F8>` to open a new terminal in the popup window.  
  `<F9>/<S-F9>` to switch to the next/prev terminal.  
  `<F10>` to toggle the popup window.

- [kassio/neoterm](https://github.com/kassio/neoterm)  
  `:T cmd` is a replacement of `:term cmd` that reuse the terminal already exists.  
  TODO: Add keymaps for [REPL](https://github.com/kassio/neoterm#repl).

- [skywind3000/asyncrun.vim](https://github.com/skywind3000/asyncrun.vim)  
  `:AsyncRun cmd` to run your comamnd asynchronously and see output in quickfix/floaterm/neoterm.

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

- [APZelos/blamer.nvim](https://github.com/APZelos/blamer.nvim)  
  Show git blame as VS Code's GitLens plugin.  
  It's disabled by default since it's a little buggy, you can toggle it in the `<F1>` menu.
  ![blamer gif](https://res.cloudinary.com/djg49e1u9/image/upload/c_crop,h_336/v1579092411/blamer_mkv07c.gif)

## Appearance 

- [lifepillar/vim-solarized8](https://github.com/lifepillar/vim-solarized8)  
  A solarized colorscheme that is optimized for true-color terminals.

- [jszakmeister/vim-togglecursor](https://github.com/jszakmeister/vim-togglecursor)  
  Toggle the cursor shape when entering the insert mode.
