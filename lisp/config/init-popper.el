(require 'popper)

;; 将相关buffer指定弹出窗口
(setq popper-reference-buffers
      '("\\*Messages\\*"           ;; 匹配 *Messages* 缓冲区
        "Output\\*$"               ;; 匹配以 "Output" 结尾的缓冲区
        "\\*Async Shell Command\\*" ;; 匹配 *Async Shell Command*
        help-mode                  ;; 匹配帮助模式的缓冲区
        compilation-mode))         ;; 匹配编译模式的缓冲区

;; 启用 popper 模式
(popper-mode +1)
;; 启用 popper 回显模式
(popper-echo-mode +1)

(provide 'init-popper)
