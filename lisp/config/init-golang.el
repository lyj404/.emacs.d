(require 'go-mode)

(lazy-load-set-keys
 '(
   ("C-c C-f" . gofmt) ; go格式化
   ("C-c C-d" . godoc) ;; go文档
   ("C-c C-a" . go-import-add) ;; 添加go lib
   )
 go-mode-map)

(provide 'init-golang)
