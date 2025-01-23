;; 设置Python安装位置
(setq python-interpreter-path "~/environment/lsp-bridge-venv/bin/python3")

;; ;; 关闭插件启动输出
(with-temp-message ""
  (require 'lazy-load)
  (require 'init-theme)
  (require 'init-awesome-tray)
  (require 'init-keymap)
  (require 'init-base)
  (require 'init-auto-save)
  (require 'init-dashboard)
  (require 'init-projectile)
  (require 'init-lsp-bridge)
  (require 'init-mode)

  ;; 延后加载
  (run-with-idle-timer
   1 nil
   #'(lambda ()
	   (require 'init-sidebar)
	   (require 'init-treesit)
	   (require 'init-eldoc)
	   (require 'init-yasnippet)
	   (require 'init-markdown-mode)
	   (require 'init-sort-tab)
    )))
