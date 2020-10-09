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

- `after/ftplugin`  
  存放针对各文件类型的自定义配置

- `compiler`  
  比如里面有个 `python3.vim` 文件  
  则可在 Vim 里执行 `:compiler python3` 来设置 `makeprg` `errorformat` 等

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

- `yankring_history_v2.txt`  
   [YankRing](https://github.com/vim-scripts/YankRing.vim) 插件可持久化粘贴板

- `globalrc`  
  Gtags 的配置文件

# Plugins

- [junegunn/fzf](https://github.com/junegunn/fzf)  
  As a vim plugin, this repo provide some core integration functions: `fzf#run` and `fzf#wrap`.

- [junegunn/fzf.vim](https://github.com/junegunn/fzf.vim)  
  This repo is a bundle of fzf-based [commands and mappings](https://github.com/junegunn/fzf.vim#commands).

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
