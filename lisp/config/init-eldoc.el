;; 遍历一个模式列表，为每个模式添加配置
(dolist (hook (list
               'ielm-mode-hook                ; 交互式 Emacs Lisp 模式
               'emacs-lisp-mode-hook          ; Emacs Lisp 编程模式
               'lisp-interaction-mode-hook    ; Lisp 交互模式
               'Info-mode-hook                ; 查看 Info 文档的模式
               'erc-mode-hook                 ; IRC 客户端模式
               ))

  ;; 对每一个模式，添加一个匿名函数到其钩子中
  (add-hook hook #'(lambda ()
                     (require 'eldoc)                 ; 加载 eldoc 模块
                     (require 'eldoc-extension)       ; 加载 eldoc 的扩展模块
                     (setq eldoc-idle-delay 0.05)     ; 设置 eldoc 显示信息的延迟为0.05秒
                     (setq eldoc-argument-case 'eldoc-argument-list) ; 设置参数高亮的方式
                     (turn-on-eldoc-mode)             ; 开启 eldoc 模式
                     )))

(provide 'init-eldoc)
