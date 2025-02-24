(add-hook 'find-file-hook
          #'(lambda ()
              (require 'auto-sudoedit)
              (auto-sudoedit)))         ;默认打开忽略模式

(provide 'init-auto-sudoedit)