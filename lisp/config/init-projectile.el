(require 'projectile)

;; 启用 projectile
(projectile-mode +1)

;; 快捷键前缀 
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

(provide 'init-projectile)
