(require 'python)

;; 设置快捷键
(lazy-load-local-keys
 '(
   ("C-S-j" . jump-to-import) ; 跳转到文件import语句的位置
   )
 python-mode-map
 "python-extension")

(provide 'init-python)
