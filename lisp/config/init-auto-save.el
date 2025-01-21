(require 'auto-save)
(require 'ws-butler)

;; 启用自动保存功能
(auto-save-enable)
;; 设置自动保存为静默模式，不提示用户
(setq auto-save-silent t)

;; 启动ws-butler全局模式，自动清理尾行空白
(ws-butler-global-mode)

(provide 'init-auto-save)
