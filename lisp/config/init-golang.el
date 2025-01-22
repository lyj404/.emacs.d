(require 'go-mode)

;; 在go-mode加载后设置相关快捷键
(with-eval-after-load 'go-mode
  (define-key go-mode-map (kbd "C-c C-f") 'gofmt)
  (define-key go-mode-map (kbd "C-c C-d") 'godoc)
  (define-key go-mode-map (kbd "C-c C-a") 'go-import-add))

(provide 'init-golang)
