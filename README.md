# VSCode Neovim Clean Config

## Vim-Plug 安装

`NeoVim 采用`XDG Base Directory Specification(XDG 基本目录规范)管理配置文件

### 方法一：`init.vim` 自动安装 `vim-plug`
将`init.vim`，放置在 `~/.config/nvim/`目录下，此`init.vim`中添加了自动`install vim-plug`的检查脚本：

``` Shell
let plugblob = "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
let plugfile = expand("~/.config/nvim/autoload/plug.vim")
if !filereadable(plugfile)
  execute("!curl -fLo '".plugfile."' --create-dirs '".plugblob."'")
endif
```

### 方法二：手动安装`Vim-Plug`：

``` Shell
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

完成后，使用`:PlugInstall`开始安装配置的插件。
