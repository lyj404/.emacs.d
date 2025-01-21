;; 在所有编程相关模式激活时执行以下操作
(add-hook 'prog-mode-hook
          #'(lambda ()
              ;; 引入 yasnippet 模块
              (require 'yasnippet)

              ;; 定义一个函数，用于获取 Git 配置中的用户名
              (defun get-git-user-name ()
                (interactive)  ;; 使函数可以通过 M-x 调用
                ;; 执行 git config 命令获取用户名，并去除结果字符串末尾的换行符
                (replace-regexp-in-string "\n$" "" (shell-command-to-string "git config --get user.name")))

              ;; 定义一个函数，用于获取 Git 配置中的用户邮箱
              (defun get-git-user-email ()
                (interactive)  ;; 使函数可以通过 M-x 调用
                ;; 执行 git config 命令获取用户邮箱，并去除结果字符串末尾的换行符
                (replace-regexp-in-string "\n$" "" (shell-command-to-string "git config --get user.email")))

              ;; 设置 yasnippet 的模板搜索路径为 ~/.emacs.d/lisp/snippets
              ;; 使用 expand-file-name 确保路径正确展开用户的主目录
              ;;(add-to-list 'yas/root-directory (expand-file-name "~/.emacs.d/lisp/snippets"))
			  (setq yas-snippet-dirs '("~/.emacs.d/lisp/snippets"))
              ;; 重新加载所有 yasnippet 的模板
              (yas-reload-all)
              ;; 激活 yasnippet 模式
              (yas-minor-mode 1)))

;; 提供 init-yasnippet 模块，使其可以被其他 Emacs 配置文件引用
(provide 'init-yasnippet)
