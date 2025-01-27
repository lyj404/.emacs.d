(require 'eaf)
(require 'eaf-file-manager)
(require 'eaf-pyqterminal)
(require 'eaf-markdown-previewer)

;; 终端快捷键
;; 向上滚动
(eaf-bind-key scroll_up "M-," eaf-pyqterminal-keybinding)
;; 向下滚动
(eaf-bind-key scroll_down "M-." eaf-pyqterminal-keybinding)

(defun eaf-open-terminal ()
  "Try to open fish if fish exist, otherwise use default shell."
  (interactive)
  (eaf-pyqterminal-run-command-in-dir
   (if (executable-find "fish")
       "fish"
     (eaf--generate-terminal-command))
   (eaf--non-remote-default-directory)
   t))

(provide 'init-eaf)
