(require 'dashboard)

(setq dashboard-banner-logo-title "Happy Hacking & Writing 🎯") ;; 个性签名，随读者喜好设置
(setq dashboard-projects-backend 'projectile) ;; projectile
(setq dashboard-startup-banner 'official) ;; 设置自定义图片
(setq dashboard-items '((recents . 5)  ;; 显示多少个最近文件
                        (projects . 10))) ;; 显示多少个最近项目

;; 启用 Dashboard
(dashboard-setup-startup-hook)

(provide 'init-dashboard)
