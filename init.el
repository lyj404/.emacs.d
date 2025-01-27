(require 'init-accelerate)

;; 关闭插件启动输出
(with-temp-message ""
   (require 'lazy-load)
   (require 'init-theme)
   (require 'init-awesome-tray)
   (require 'init-lsp-bridge)
   (require 'init-auto-save)
   (require 'init-keymap)
   (require 'init-base)
   (require 'init-mode)

   ;; 延后加载
   (run-with-idle-timer
	1 nil
	#'(lambda ()
		(require 'init-treesit)
		;; (require 'init-eldoc)
		(require 'init-yasnippet)
		(require 'init-markdown-mode)
		(require 'init-eaf)
		(require 'init-sort-tab)
		)))

;; 在Emacs启动之后加载eaf-file-manager
(add-hook 'emacs-startup-hook
          (lambda ()
            (message "Emacs has started!")
            (eaf-open-in-file-manager)))
