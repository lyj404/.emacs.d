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
   ("M-o" . ace-window)
   )
 "init-ace-window")

;; avy快捷键
(lazy-load-global-keys
 '(
   ("M-g f" . avy-goto-line) ; 跳转到某行
   ("M-g w" . avy-goto-word-0) ; 跳转到某个字符起始位置
   )
 "init-avy")

;; sort-tab快捷键
(lazy-load-global-keys
 '(
   ("M-1" . sort-tab-select-first-tab) ;选择第一个标签
   ("M-<left>" . sort-tab-select-prev-tab)    ;选择前一个标签
   ("M-<right>" . sort-tab-select-next-tab)    ;选择后一个标签
   ("M-0" . sort-tab-select-last-tab)  ;选择最后一个标签
   ("C-x ;" . sort-tab-close-current-tab)  ;关闭当前标签
   ("s-q" . sort-tab-close-mode-tabs)    ;关闭特定模式的标签
   ("s-Q" . sort-tab-close-all-tabs)     ;关闭所有标签
   )
 "init-sort-tab")

;; projectile快捷键
(lazy-load-global-keys
 '(
   ;; 绑定键，设置 "C-c p" 为 projectile 的命令映射快捷键
   ("C-c p" . projectile-command-map)
   )
 "init-projectile")

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
   ("s-'" . eaf-open) ; 打开某个eaf的app
   ("s-n" . eaf-open-terminal)
   ("s-6" . eaf-record-log)
   ("s-7" . eaf-stop-process)
   )
 "init-eaf")

;; lsp-bridge快捷键
(lazy-load-global-keys
 '(
   ("C-1" . lsp-bridge-find-def) ; 跳转到定义位置
   ("C-2" . lsp-bridge-find-def-return) ; 返回跳转之前的位置
   ("C-3" . lsp-bridge-code-action) ; 弹出代码修复菜单
   ("C-4" . lsp-bridge-popup-documentation) ; 查看光标处文档
   ("C-&"   . lsp-bridge-indent-left)                     ;向左缩进
   ("C-*"   . lsp-bridge-indent-right)                    ;向右缩进
   ("M-s-j" . lsp-bridge-diagnostic-jump-next) ;显示下一个错误
   ("M-s-k" . lsp-bridge-diagnostic-jump-prev) ;显示上一个错误
   ("M-s-n" . lsp-bridge-popup-documentation-scroll-up) ;向下滚动文档
   ("M-s-p" . lsp-bridge-popup-documentation-scroll-down) ;向上滚动文档
   )
 "init-lsp-bridge")

;; popper快捷键
(lazy-load-global-keys
 '(
   ("C-`" . popper-toggle-latest)
   ("M-`" . popper-cycle)
   ("C-M-`" . popper-toggle-type)
   )
 "init-popper")

;; one-key创建的菜单对应的快捷键
(lazy-load-set-keys
 '(
   ("C-c o" . one-key-menu-directory) ; 打开目录菜单
   ))

(provide 'init-keymap)
