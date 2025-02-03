(require 'init-accelerate)

;; 关闭插件启动输出
(with-temp-message ""
  (require 'lazy-load)
  (require 'one-key)
  (require 'fingertip)
  
  (require 'init-theme)
  (require 'init-awesome-tray)
  (require 'init-lsp-bridge)
  (require 'init-auto-save)
  (require 'init-keymap)
  (require 'init-base)
  (require 'init-mode)
  (require 'init-fingertip)
  (require 'init-one-key)

  ;; 延后加载
  (run-with-idle-timer
   1 nil
   #'(lambda ()
	   (require 'init-treesit)
	   (require 'init-eldoc)
	   (require 'init-yasnippet)
	   (require 'init-markdown-mode)
	   (require 'init-eaf)
	   (require 'init-sort-tab)
	   )))
