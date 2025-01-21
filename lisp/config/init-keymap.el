;; 设置全选快捷键
(global-set-key (kbd "s-a") 'mark-whole-buffer)

;; 设置打开和关闭dired-sidebar的快捷键
(global-set-key (kbd "C-x e") 'dired-sidebar-toggle-sidebar)

;; ace-window快捷键
(global-set-key (kbd "C-x o") 'ace-window)

;; sort-tab快捷键
(global-set-key (kbd "M-1") 'sort-tab-select-visible-tab)
(global-set-key (kbd "M-2") 'sort-tab-select-visible-tab)
(global-set-key (kbd "M-3") 'sort-tab-select-visible-tab)
(global-set-key (kbd "M-4") 'sort-tab-select-visible-tab)
(global-set-key (kbd "M-5") 'sort-tab-select-visible-tab)
(global-set-key (kbd "M-6") 'sort-tab-select-visible-tab)
(global-set-key (kbd "M-7") 'sort-tab-select-visible-tab)
(global-set-key (kbd "M-8") 'sort-tab-select-visible-tab)
(global-set-key (kbd "M-9") 'sort-tab-select-visible-tab)
(global-set-key (kbd "M-0") 'sort-tab-select-visible-tab)
(global-set-key (kbd "s-Q") 'sort-tab-close-all-tabs)
(global-set-key (kbd "s-q") 'sort-tab-close-mode-tabs)
(global-set-key (kbd "C-S-w") 'sort-tab-close-current-tab)

(provide 'init-keymap)
