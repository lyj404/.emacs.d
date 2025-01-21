(require 'vscode-icon)
(require 'dired-sidebar)

;; 设置 dired-sidebar-mode 钩子
(add-hook 'dired-sidebar-mode-hook
          (lambda ()
            ;; 如果不是远程文件，启用 auto-revert-mode 自动刷新文件
            (unless (file-remote-p default-directory)
              (auto-revert-mode))))

;; 配置 dired-sidebar
;; 添加 toggle-window-split 到隐藏命令列表，避免在侧边栏中显示
(push 'toggle-window-split dired-sidebar-toggle-hidden-commands)
;; 添加 rotate-windows 到隐藏命令列表
(push 'rotate-windows dired-sidebar-toggle-hidden-commands)
;; 设置子树前缀为 "-"，用于视觉上的缩进
(setq dired-sidebar-subtree-line-prefix "-")
;; 使用 VSCode 风格的主题
(setq dired-sidebar-theme 'vscode)
;; 启用终端集成，使得侧边栏可以与终端更好地协作
(setq dired-sidebar-use-term-integration t)
;; 使用自定义字体来显示侧边栏
(setq dired-sidebar-use-custom-font t)
;; 设置 dired-sidebar 图标缩放比例
(setq dired-sidebar-icon-scale 0.1)
;; 设置 dired-sidebar 跟随文件的空闲延迟时间
(setq dired-sidebar-follow-file-idle-delay 0.5)


(provide 'init-sidebar)
