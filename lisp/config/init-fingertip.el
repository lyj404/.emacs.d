;; 在指定编程语言中启用fingertip
(dolist (hook (list
               'emacs-lisp-mode-hook
               'lisp-interaction-mode-hook
               'lisp-mode-hook
			   'markdown-ts-mode-hook
			   'yaml-ts-mode-hook
               'go-mode-hook
               ))
  (add-hook hook #'(lambda () (fingertip-mode 1))))

;; fingertip快捷键
(lazy-load-set-keys
 '(
   ("%" . fingertip-match-paren)            ;括号跳转
   ("(" . fingertip-open-round)             ;智能 (
   ("[" . fingertip-open-bracket)           ;智能 [
   ("{" . fingertip-open-curly)             ;智能 {
   (")" . fingertip-close-round)            ;智能 )
   ("]" . fingertip-close-bracket)          ;智能 ]
   ("}" . fingertip-close-curly)            ;智能 }
   ("（" . fingertip-open-chinese-round)    ;智能 （
   ("「" . fingertip-open-chinese-bracket)  ;智能 「
   ("【" . fingertip-open-chinese-curly)    ;智能 【
   ("）" . fingertip-close-chinese-round)   ;智能 ）
   ("」" . fingertip-close-chinese-bracket) ;智能 」
   ("】" . fingertip-close-chinese-curly)   ;智能 】
   ("\"" . fingertip-double-quote)          ;智能 "
   ("'" . fingertip-single-quote)           ;智能 '
   ("=" . fingertip-equal)                  ;智能 =
   ("SPC" . fingertip-space)                ;智能 space
   ("RET" . fingertip-newline)              ;智能 newline
   )
 fingertip-mode-map
 )

(provide 'init-fingertip)
