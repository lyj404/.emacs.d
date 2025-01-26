(defun add-to-alist (alist-var elt-cons &optional no-replace)
  "Add to the value of ALIST-VAR an element ELT-CONS if it isn't there yet.
If an element with the same car as the car of ELT-CONS is already present,
replace it with ELT-CONS unless NO-REPLACE is non-nil; if a matching
element is not already present, add ELT-CONS to the front of the alist.
The test for presence of the car of ELT-CONS is done with `equal'."
  (let ((existing-element (assoc (car elt-cons) (symbol-value alist-var))))
    (if existing-element
        (or no-replace
            (rplacd existing-element (cdr elt-cons)))
      (set alist-var (cons elt-cons (symbol-value alist-var)))))
  (symbol-value alist-var))

;; 遍历文件模式列表，将文件扩展名与 Emacs 编辑模式关联
(dolist (elt-cons '(
                    ("\\.go$" . go-mode)
                    ))
  (add-to-alist 'auto-mode-alist elt-cons))



;; load mode
(autoload 'go-mode "init-golang")
(autoload 'markdown-mode "init-markdown-mode")

;; 自动换行，默认100列就换行
(setq default-fill-column 100)
(dolist (hook (list
               'after-text-mode-hook
               'message-mode-hook
               ))
  (add-hook hook #'(lambda () (auto-fill-mode 1))))

(provide 'init-mode)
