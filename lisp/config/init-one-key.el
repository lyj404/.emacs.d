(require 'one-key)
(require 'eaf)
(require 'eaf-file-manager)

;; 创建一个目录菜单
(one-key-create-menu
 "DIRECTORY"
 '(
   (("h" . "Home") . (lambda () (interactive) (eaf-open-in-file-manager "~/")))
   (("p" . "Project") . (lambda () (interactive) (eaf-open-in-file-manager "~/Projects")))
   )
 t)

(provide 'init-one-key)
