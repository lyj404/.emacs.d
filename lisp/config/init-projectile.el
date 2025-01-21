(require 'projectile)

;; 绑定键，设置 "C-c p" 为 projectile 的命令映射快捷键
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
;; 配置 projectile
(setq projectile-mode-line "Projectile") ;; 在模式行中显示 'Projectile'
(setq projectile-track-known-projects-automatically nil) ;; 禁止自动跟踪已知项目列表
;; 启用 projectile
(projectile-mode +1)

(provide 'init-projectile)
