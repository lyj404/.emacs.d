(add-to-list 'custom-theme-load-path "~/.emacs.d/lisp/extensions/theme")
(load-theme 'catppuccin :no-confirm)

(setq catppuccin-flavor 'latte) ;; or 'latte, 'macchiato, or 'mocha
(catppuccin-reload)

(provide 'init-theme)
