(require 'markdown-mode)
(require 'markdown-ts-mode)

;; 检查Treesit是否安装markwodn语法规则
(unless (treesit-ready-p 'markdown)
  (treesit-install-language-grammar 'markdown))

;; 配置markdown语法高亮规则
(with-eval-after-load 'markdown-ts-mode
  ;; = 块级元素配置 =
  (defvar my/markdown-block-rules
    (treesit-font-lock-rules
     :language 'markdown
     :override t
     :feature 'blocks
     '(;; 标题样式
       [(atx_heading (atx_h1_marker) @font-lock-preprocessor-face)
        (atx_heading (atx_h2_marker) @font-lock-keyword-face)
        (setext_heading) @font-lock-function-name-face

        ;; 代码块
        (fenced_code_block (fenced_code_block_delimiter) @font-lock-doc-face)
        (indented_code_block) @font-lock-comment-face

        ;; 其他块元素
        (thematic_break) @shadow
        (block_quote (block_quote_marker) @font-lock-comment-face)])))

  ;; = 内联元素配置 =
  (defvar my/markdown-inline-rules
    (treesit-font-lock-rules
     :language 'markdown-inline
     :override t
     :feature 'inlines
     '(;; 强调样式
       [(emphasis) @italic
        (strong_emphasis) @bold
        (strikethrough) @shadow

        ;; 链接与图片
        (link_destination) @font-lock-comment-face
        (image_description) @link
        (inline_link (link_text) @link)])))

  ;; = 特征管理 =
  (setq markdown-ts--treesit-settings
        (append my/markdown-block-rules
                my/markdown-inline-rules))

  ;; = 应用特征层级 =
  (setq-local treesit-font-lock-feature-list
              '((blocks inlines)    ; 核心特征
                (comment)           ; 次要特征
                (error)))           ; 错误提示

  ;; = Face 映射优化 =
  (face-remap-add-relative 'italic :slant 'italic)
  (face-remap-add-relative 'bold   :weight 'bold))

;; markdown相关快捷键
(lazy-load-set-keys
 '(
   ("TAB" . markdown-cycle) ; 折叠当前标题下所有子标题
   )
 markdown-ts-mode-map)

(provide 'init-markdown-mode)
