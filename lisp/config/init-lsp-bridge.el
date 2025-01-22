(require 'lsp-bridge)

;; 允许在 minibuffer 中显示自动完成提示
(setq lsp-bridge-enable-completion-in-minibuffer t)

;; 设置签名显示函数为带框架的显示方式
(setq lsp-bridge-signature-show-function 'lsp-bridge-signature-show-with-frame)

;; 允许通过 tramp 使用 lsp-bridge，适用于远程文件编辑
(setq lsp-bridge-enable-with-tramp t)

;; 启用自动完成模式的 Capabilities Application Programming Interface (CAPF) 支持
(setq acm-enable-capf t)

;; 启用快速访问自动完成菜单项
(setq acm-enable-quick-access t)

;; 设置自动完成模式以触发关键词匹配 yasnippet
(setq acm-backend-yas-match-by-trigger-keyword t)

;; 禁用 TabNine 和 Codeium 自动完成
;;(setq acm-enable-tabnine nil)
;;(setq acm-enable-codeium nil)

;; 启用 lsp 工作区符号自动完成
(setq acm-enable-lsp-workspace-symbol t)

;; 启用行内提示（如类型信息显示）
(setq lsp-bridge-enable-inlay-hint t)

;; 启用语义标记
(setq lsp-bridge-semantic-tokens t)

;; 设置忽略语义标记的修饰符类型限制，默认忽略变量
(setq-default lsp-bridge-semantic-tokens-ignore-modifier-limit-types ["variable"])

;; 设置Python环境
(setq lsp-bridge-python-command (expand-file-name python-interpreter-path))

;; 日志开关
;;(setq lsp-bridge-enable-log t)

;; 全局启用 lsp-bridge 模式
(global-lsp-bridge-mode)

(setq lsp-bridge-lang-server-extension-list
      '(("go" . "gopls")))

(provide 'init-lsp-bridge)
