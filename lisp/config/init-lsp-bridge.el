(require 'lsp-bridge)

;; 在 Minibuffer 中弹出补全
(setq lsp-bridge-enable-completion-in-minibuffer t)

;; 设置签名信息的函数用 frame 来显示函数的签名信息
(setq lsp-bridge-signature-show-function 'lsp-bridge-signature-show-with-frame)

;; 设置自动完成模式以触发关键词匹配 yasnippet
(setq acm-backend-yas-match-by-trigger-keyword t)

;; 类型嵌入提示
(setq lsp-bridge-enable-inlay-hint t)

;; 启用语义符号高亮
(setq lsp-bridge-semantic-tokens t)

;; 设置忽略语义标记的修饰符类型限制，默认忽略变量
(setq-default lsp-bridge-semantic-tokens-ignore-modifier-limit-types ["variable"])

;; 启用快速选择（使用alt+数字）
(setq acm-enable-quick-access t)

;; 设置 Markdown 的 LSP 服务器为 marksman
(setq lsp-bridge-markdown-lsp-server "marksman")

;; 日志开关
;;(setq lsp-bridge-enable-log t)

;; 全局启用 lsp-bridge 模式
(global-lsp-bridge-mode)

(provide 'init-lsp-bridge)
