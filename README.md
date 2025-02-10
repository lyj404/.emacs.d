# 依赖项
* 安装Emacs29及以上版本
* 安装Python3，并且提供相关Python的类库，安装命令：`pip3 install epc orjson sexpdata six setuptools paramiko rapidfuzz watchdog packaging requests --break-system-packages`
* 安装LSP（语言服务器）：
  * `gopls`，安装命令：`go install golang.org/x/tools/gopls@latest`，安装`GO`语言的LSP需要先安装go开发语言环境，
  * `yaml-language-server`，安装命令`npm install -g yaml-language-server`
  * `basedpyright`，安装命令`pip install basedpyright --break-system-packages`
* 安装`fd`，安装命令：`sudo pacman -S fd`
* 安装`ripgrep`，安装命令：`sudo pacman -S ripgrep`
* 通过`Tree-sitter`安装`go`、`markdown`、`markdown-inline`、`elisp`、`yaml`、`python`对应的语法树，通过`M-x`执行`treesit-install-language-grammar`命令安装对应的语法树
# 安装
**下载源码：**
```
git clone https://github.com/lyj404/.emacs.d.git
```
**安装子模块依赖：**
```
git submodule update --init --recursive
```
