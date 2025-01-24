;; 卸载按键
(lazy-load-unset-keys                   ;全局按键的卸载
 '("C-x C-f"))

;; 交互式管理文件和缓存
(lazy-load-set-keys
 '(
   ("C-x C-f" . ido-find-file)          ;交互式查找文件
   ("C-x b" . ido-switch-buffer)        ;交互式切换buffer
   ("C-x i" . ido-insert-buffer)        ;插入缓存
   ("C-x I" . ido-insert-file)          ;插入文件
   ))

;; 设置全选和注释快捷键
(lazy-load-set-keys
 '(
   ("s-a" . mark-whole-buffer) ; 全选
   ("C-c SPC" . comment-or-uncomment-region) ; 注释和取消注释
   ))

;; ace-window快捷键
(lazy-load-global-keys
 '(
   ("C-x o" . ace-window)
   )
 "init-ace-window")

;; sort-tab快捷键
(lazy-load-global-keys
 '(
   ("M-1" . sort-tab-select-first-tab) ;选择第一个标签
   ("M-2" . sort-tab-select-prev-tab)    ;选择前一个标签
   ("M-3" . sort-tab-select-next-tab)    ;选择后一个标签
   ("M-0" . sort-tab-select-last-tab)  ;选择最后一个标签
   ("C-x ;" . sort-tab-close-current-tab)  ;关闭当前标签
   ("s-q" . sort-tab-close-mode-tabs)    ;关闭特定模式的标签
   ("s-Q" . sort-tab-close-all-tabs)     ;关闭所有标签
   )
 "init-sort-tab")

;; blink-search快捷键
(lazy-load-global-keys
 '(
   ("s-y" . blink-search)
   )
 "init-blink-search")

;; eaf快捷键
(lazy-load-global-keys
 '(
   ("<f8>" . eaf-open-in-file-manager)
   ("s-'" . eaf-open)
   ("s-n" . eaf-open-terminal)
   ("s-6" . eaf-record-log)
   ("s-7" . eaf-stop-process)
   )
 "init-eaf")

(provide 'init-keymap)
