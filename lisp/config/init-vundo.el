(require 'vundo)

(lazy-load-set-keys
 '(
   ("l" . vundo-forward)        ; 按 "l" 向前移动
   ("h" . vundo-backward)       ; 按 "h" 向后移动
   ("n" . vundo-next)           ; 按 "n" 移动到下一个
   ("p" . vundo-previous)       ; 按 "p" 移动到上一个
   ("j" . vundo-stem-root)      ; 按 "j" 移动到根节点
   ("k" . vundo-stem-end)       ; 按 "k" 移动到末尾节点
   ("," . vundo-goto-last-saved); 按 "," 移动到最后保存的位置
   ("q" . vundo-quit)           ; 按 "q" 退出
   ("C-g" . vundo-quit)         ; 按 "C-g" 退出
   ("f" . vundo-confirm)        ; 按 "f" 确认操作
   ("C-m" . vundo-confirm)      ; 按 "C-m" 确认操作
   ("i" . vundo--inspect)       ; 按 "i" 检查
   ("d" . vundo--debug)         ; 按 "d" 调试
   )
 vundo-mode-map)

(provide 'init-vundo)
