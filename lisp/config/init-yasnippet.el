;; 加载yasnippet设置
(defun my-yas-setup ()
  (require 'yasnippet)
  (setq yas-snippet-dirs '("~/.emacs.d/snippets"))
  (yas-reload-all)
  (yas-minor-mode 1))

;; 在prog-mode-hook下激活yasnippet
(add-hook 'prog-mode-hook 'my-yas-setup)
;; 在yaml-ts-mode-hook下激活yasnippet
(add-hook 'yaml-ts-mode-hook 'my-yas-setup)


(provide 'init-yasnippet)
