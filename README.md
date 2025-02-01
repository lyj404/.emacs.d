# 依赖项
* 安装Emacs29及以上版本
* 安装Python3，并且提供相关Python的类库，安装命令：`pip3 install epc orjson sexpdata six setuptools paramiko rapidfuzz watchdog packaging requests --break-system-packages`
* 安装LSP（语言服务器）：`gopls`，安装命令：`go install golang.org/x/tools/gopls@latest`，安装`GO`语言的LSP需要先安装go开发语言环境
* 安装`fd`，安装命令：`sudo pacman -S fd`
* 安装`ripgrep`，安装命令：`sudo pacman -S ripgrep`
# 安装
**下载源码：**
```shell
git clone https://github.com/lyj404/.emacs.d.git
```
**安装子模块依赖：**
```shell
git submodule update --init --recursive
```
