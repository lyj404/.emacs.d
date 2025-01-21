(require 'awesome-tray)

;; 在 awesome-tray 中显示的模块
(setq awesome-tray-active-modules '("location" "belong" "file-path" "mode-name" "last-command" "battery" "date"))
;; 信息右边填充（间距），默认为 1
(setq awesome-tray-info-padding-right 1)
;; 启用 awesome-tray
(awesome-tray-mode 1)

(provide 'init-awesome-tray)
